#!/bin/sh

wp config create --skip-check --allow-root --path=/var/www/wordpress --dbname=$WP_DB_NAME --dbuser=$ADMIN_WP_USER --dbpass=$ADMIN_WP_PASS --dbhost=mysql
wp core install --allow-root --path=/var/www/wordpress --url=https://hsaadaou.42.fr --title=inception --admin_user=$ADMIN_WP_USER --admin_password=$ADMIN_WP_PASS --admin_email=$ADMIN_WP_USER@$ADMIN_WP_USER.com
wp plugin install log-emails disable-emails --activate --path=/var/www/wordpress
wp user create --path=/var/www/wordpress/ $USER1_WP_USER $USER1_WP_USER@$USER1_WP_USER.com --role=author --user_pass=$USER1_WP_PASS

exec php-fpm7
