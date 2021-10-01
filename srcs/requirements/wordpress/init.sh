#!/bin/sh

echo "wp config create"
wp config create --skip-check --allow-root --path=/var/www/wordpress --dbname=$WP_DB_NAME --dbuser=$ADMIN_WP_USER --dbpass=$ADMIN_WP_PASS --dbhost=mysql
echo "wp install"
wp core install --allow-root --path=/var/www/wordpress --url=https://hsaadaou.42.fr --title=inception --admin_user=$ADMIN_WP_USER --admin_password=$ADMIN_WP_PASS --admin_email=$ADMIN_WP_USER@$ADMIN_WP_USER.com
# echo "wp plugin install"
# wp plugin install log-emails disable-emails --activate --path=/var/www/wordpress

php-fpm7
