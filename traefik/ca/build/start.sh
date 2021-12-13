#!/bin/sh

cert() {
  COMMON_NAME=$1
  FILENAME=$COMMON_NAME
  
  if ! test -f ${CERT}_rsa.key; then
    openssl genrsa -out ${FILENAME}.key 4096
  else
    mv ${CERT}_rsa.key ${FILENAME}.key
  fi

  openssl req -new -sha256 \
     -key ${FILENAME}.key \
     -out ${FILENAME}.csr \
     -subj "/C=${COUNTRY_CODE}/ST=${STATE}/L=${CITY}/O=${COMPANY}/OU=${DEPARTMENT}/CN=${COMMON_NAME}"

  openssl x509 -req -sha256 -passin pass:${AUTHORITY_PASSWORD} -days 3650 \
    -in ${FILENAME}.csr -CA ca.crt -CAkey ca.key \
    -out ${FILENAME}.crt

  mv ${FILENAME}.crt ${FILENAME}.pem
  cp ca.crt ${FILENAME}_chain.pem
  mv ${FILENAME}.key ${FILENAME}_rsa.key
  rm ${FILENAME}.csr
}

[[ -d /certs ]] || mkdir /certs
cd /certs


# Only create a new CA if it does not exist
if ! test -f ca.key; then
  openssl genrsa -out ca.key 4096
  openssl req -new -x509 -sha256 \
   -passin pass:${AUTHORITY_PASSWORD} \
   -passout pass:${AUTHORITY_PASSWORD} \
   -extensions v3_ca -key ca.key -out ca.crt -days 3650 \
   -subj "/C=${COUNTRY_CODE}/ST=${STATE}/L=${CITY}/O=${COMPANY}/OU=${DEPARTMENT}/CN=${AUTHORITY_NAME}"

  echo "01" > ca.srl
fi


for CERT in $CERTS; do
  echo "Creating certificate for $CERT"
  cert $CERT
done

ls -l /certs
