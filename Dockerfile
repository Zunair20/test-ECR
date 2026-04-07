FROM alpine:3.14
RUN apk add --no-cache curl=7.79.1-r0
CMD ["echo", "Running vulnerable container lab!"]
