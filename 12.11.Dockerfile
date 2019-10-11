FROM node:12.11.0-slim

WORKDIR /app

RUN apt update \
    && apt install -y --no-install-recommends make git ssh-client

RUN mkdir -p /root/.ssh \
    && echo "Host github.com\n    StrictHostKeyChecking no\n    IdentityFile /root/.ssh/id_rsa" >> /root/.ssh/config

COPY id_rsa /root/.ssh/id_rsa

RUN chmod 0400 /root/.ssh/id_rsa

COPY app/package.json .

CMD ["npm", "install"]
