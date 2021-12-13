#!/bin/bash

ApplicationKey=$(cat ./secrets/ovh_application_key.secret)

curl -vvv -XPOST -H "X-Ovh-Application: $ApplicationKey" -H "Content-type: application/json" "https://eu.api.ovh.com/1.0/auth/credential" -d '{ "accessRules":[ {"method":"POST","path":"/domain/zone/example.com/record"}, {"method":"POST","path":"/domain/zone/example.com/refresh"}, {"method":"DELETE","path":"/domain/zone/example.com/record/*"} ], "redirection": "https://www.example.com" }'

# Response this :
# {"consumerKey":"xxx","validationUrl":"https://eu.api.ovh.com/auth/?credentialToken=xxx","state":"pendingValidation"}
# Visit the url in a browser and **Set the validity date to unlimited!** and login to activate the rights.
