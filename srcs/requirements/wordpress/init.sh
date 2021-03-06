#!/bin/sh

wp config create --skip-check --allow-root --path=/var/www/wordpress --dbname=$WP_DB_NAME --dbuser=$ADMIN_WP_USER --dbpass=$ADMIN_WP_PASS --dbhost=mysql
wp core install --allow-root --path=/var/www/wordpress --url=https://hsaadaou.42.fr --title=inception --admin_user=$ADMIN_WP_USER --admin_password=$ADMIN_WP_PASS --admin_email=$ADMIN_WP_USER@$ADMIN_WP_USER.com

wp plugin install log-emails disable-emails --activate --path=/var/www/wordpress
wp plugin install redis-cache --activate --path=/var/www/wordpress
wp redis enable --allow-root --path=/var/www/wordpress

wp user create --path=/var/www/wordpress/ $USER1_WP_USER $USER1_WP_USER@$USER1_WP_USER.com --role=author --user_pass=$USER1_WP_PASS

sed -i "20i define( 'WP_REDIS_HOST', 'redis' );" /var/www/wordpress/wp-config.php
sed -i "21i define( 'WP_REDIS_PORT', 6379 );" /var/www/wordpress/wp-config.php
sed -i "22i define( 'WP_REDIS_TIMEOUT', 1 );" /var/www/wordpress/wp-config.php
sed -i "23i define( 'WP_REDIS_READ_TIMEOUT', 1 );" /var/www/wordpress/wp-config.php
sed -i "24i define( 'WP_REDIS_DATABASE', 0 );" /var/www/wordpress/wp-config.php

exec php-fpm7
