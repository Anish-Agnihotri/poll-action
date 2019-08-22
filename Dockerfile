FROM alpine:latest

RUN apk --no-cache add bash

RUN ["chmod", "+x", "/entrypoint.sh"]
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
