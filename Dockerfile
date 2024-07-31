FROM alpine:3.20
LABEL maintainer="EEA: IDM2 A-Team <eea-edw-a-team-alerts@googlegroups.com>"

# Install selfsigned ca (optional)
# COPY <ca.crt> /etc/ssl/certs/<ca.pem>
# Install basic packages 
#RUN apk upgrade --update &&  apk add bash libressl curl fping libcap &&     rm -rf /var/cache/apk/* 

ADD root /
RUN chmod +x /start.sh 

ENTRYPOINT ["/start.sh"]
