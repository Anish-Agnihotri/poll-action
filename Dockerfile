FROM alpine:latest

RUN apk --no-cache add bash

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
