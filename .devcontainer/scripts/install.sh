#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y \
&& sudo apt install -y php-cli php-curl \
  php-fpm php-gd php-gmp php-mbstring \
  php-mysql php-snmp php-xml php-zip \
  librdkafka-dev gnupg2 \
&& php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
&& php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }" \
&& php composer-setup.php \
&& php -r "unlink('composer-setup.php');" \
&& sudo mv composer.phar /usr/bin/composer \
&& /scripts/config.sh

exit 0