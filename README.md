# Example compose infra

A docker compose infra designed to be securely self-hosted. It is also made to illustrate the [self hosting 101 wiki](https://selfhosting101.wiki/).

## List of services

- [codimd](https://github.com/hackmdio/codimd)
- [dashmachine](https://github.com/rmountjoy92/DashMachine)
- [ddclient](https://github.com/ddclient/ddclient)
- [docker_socket_proxy](https://github.com/Tecnativa/docker-socket-proxy)
- [drawio](https://github.com/jgraph/drawio)
- [elk](https://github.com/elastic)
- [firefly](https://github.com/firefly-iii/firefly-iii)
- [gitea](https://github.com/go-gitea/gitea)
- [gotify](https://github.com/gotify/server)
- [jellyfin](https://github.com/jellyfin/jellyfin)
- [nextcloud](https://github.com/nextcloud/server)
- [pihole](https://github.com/pi-hole/pi-hole)
- [traefik](https://github.com/traefik/traefik)
- [wallabag](https://github.com/wallabag/wallabag)
- [wekan](https://github.com/wekan/wekan)
- [wiki.js](https://github.com/Requarks/wiki)

Make sure to read the documentation of the services you use to configure them.

## Disclaimer

/!\ Disclaimer: The Compose configuration has been made for Compose V2. You should use the command `docker compose` instead of `docker-compose`.

If you have an error while bringing up the stack it could be due to your docker compose version.

For more information check the [docker documentation](https://docs.docker.com/compose/cli-command/#installing-compose-v2).
