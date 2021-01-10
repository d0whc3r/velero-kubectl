FROM velero/velero:latest as velero

FROM alpine:latest as kubectl

RUN apk add curl \
  && curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
  && chmod +x ./kubectl

FROM alpine:latest

COPY --from=velero /velero /usr/local/bin/velero
COPY --from=kubectl ./kubectl /usr/local/bin/kubectl
