FROM node:8.4-alpine

ARG SLACKIN_VERSION=0.13.0

RUN npm install -g --unsafe-perm slackin@${SLACKIN_VERSION}

EXPOSE 3000

CMD slackin -i $SLACKIN_TIMEOUT $SLACK_ORG $SLACK_TOKEN
