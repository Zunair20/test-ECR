FROM alpine:3.14
# Removed the =7.79.1-r0 pinning
RUN apk add --no-cache curl
CMD ["echo", "Running vulnerable container lab!"]
