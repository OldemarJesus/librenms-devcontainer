#!/usr/bin/env bash

cd /workspaces/librenms-devcontainer/librenms \
&& source /opt/python/bin/activate \
&& ./scripts/composer_wrapper.php install --no-dev \
&& sed -i 's/#DB_HOST=/DB_HOST=db/g' .env \
&& sed -i 's/#DB_DATABASE=/DB_DATABASE=librenms/g' .env \
&& sed -i 's/#DB_USERNAME=/DB_USERNAME=librenms/g' .env \
&& sed -i 's/#DB_PASSWORD=/DB_PASSWORD=mysecretpassword/g' .env \
&& ./lnms migrate --seed --no-interaction --force \
&& ./lnms plugin:add idealo/php-rdkafka-ffi \
&& ./lnms plugin:add ext-ffi

exit 0