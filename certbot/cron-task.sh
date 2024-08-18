echo "Generating keys..."

certbot certonly --reinstall --webroot --webroot-path=/data/letsencrypt -d ${DOMAIN} --email ${EMAIL} --agree-tos --no-eff-email