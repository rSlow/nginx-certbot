FROM alpine:3.14

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add \
      certbot 

# Copying the script with the start of certificate generation
COPY ./cron-task.sh /usr/bin/cron-task.sh
COPY ./start.sh /start.sh

# Launch rights
RUN chmod +x /usr/bin/cron-task.sh
RUN chmod +x /start.sh

# Adding the script launch once a month to the cron config
RUN echo "0 0 1 * * /usr/bin/cron-task.sh" > /etc/crontabs/root

ENTRYPOINT ["/start.sh"]