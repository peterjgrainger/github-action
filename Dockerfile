FROM ruby:2.6.1-alpine3.9
LABEL "com.github.actions.name"="Danger"
LABEL "com.github.actions.description"="Execute a Dangerfile stored in the projet root"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/peterjgrainger/danger-action"
LABEL "maintainer"="peterjgrainger <peter@grainger.xyz>"
LABEL "homepage"="https://grainger.xyz"

RUN apk add --no-cache git=2.20.1-r0 \
  && gem install danger:5.16.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]