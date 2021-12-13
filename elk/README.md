# Elastic stack (ELK) on Docker

This repo come from [here](https://github.com/deviantony/docker-elk).

## Initialize the elk stack

```bash
>_ docker compose -f init-stack.yaml build
```

```bash
>_ docker compose -f init-stack.yaml up -d
```

```bash
>_ docker compose -f init-stack.yml logs elastic-init
Attaching to elastic-init
elastic-init     |   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
elastic-init     |                                  Dload  Upload   Total   Spent    Left  Speed
100   810  100    21  100   789     86   3254 --:--:-- --:--:-- --:--:--  3347
elastic-init     | {"acknowledged":true}
```

```bash
>_ docker compose -f init-stack.yml down
```

## Run the elk stack

```bash
>_ docker compose build
```

```bash
>_ chown root:root filebeat/config/filebeat.yml
```

```bash
>_ docker compose up -d
```
