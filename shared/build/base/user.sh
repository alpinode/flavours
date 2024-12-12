set -e

addgroup app
adduser -D -G app -h $APP_HOMEDIR -s /bin/bash app

touch $APP_HOMEDIR/.bash_profile
chown -R app:app $APP_HOMEDIR
