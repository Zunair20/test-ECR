# 1. Upgrade to a modern, actively supported version of Alpine (e.g., 3.20)
FROM alpine:3.20

# 2. Best practice: update the package index and upgrade all base OS packages
RUN apk update && apk upgrade --no-cache

# 3. Install the latest, secure version of curl
RUN apk add --no-cache curl

CMD ["echo", "Running secure container lab!"]
