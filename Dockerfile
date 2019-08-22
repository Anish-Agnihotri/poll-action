FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/Anish-Agnihotri/poll-action"
LABEL homepage="https://github.com/Anish-Agnihotri/poll-action"
LABEL maintainer="Anish Agnihotri"

LABEL "com.github.actions.name"="Poll"
LABEL "com.github.actions.description"="Quickly create a poll with '/poll' on an issue or PR."
LABEL "com.github.actions.icon"="message-circle"
LABEL "com.github.actions.color"="black"

RUN apk --no-cache add jq bash curl git go
RUN go get github.com/apex/gh-polls/cmd/polls

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
