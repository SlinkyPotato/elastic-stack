# elastic-stack
Elastic docker stack

# Installation
This stack is designed with docker compose. To install first create a .env file using the .env.template.

Create a keystore used within kibana
```bash
docker compose -f compose.setup.yml run --rm keystore
```

Create the ssl certs used to secure the elastic connections
```bash
docker compose -f compose.setup.yml run --rm certs
```

Run Elastic Stack
```bash
docker compose up -d
```
