FROM alpine:3.2

# run.sh script uses some bash specific syntax
RUN apk add --update bash docker grep

# Install cleanup script
ADD run.sh /run.sh
ADD docker-cleanup-volumes.sh /docker-cleanup-volumes.sh

ENV CLEAN_PERIOD **None**
ENV DELAY_TIME **None**
ENV KEEP_IMAGES **None**

ENTRYPOINT ["/run.sh"]
