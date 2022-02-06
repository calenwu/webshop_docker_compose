#!/bin/bash

sudo docker-compose -f prod.yml build
sudo docker-compose -f prod.yml up -d
sudo docker-compose -f prod.yml run --rm goldenen_panda python manage.py collectstatic --no-input --clear
sudo docker-compose -f prod.yml run --rm kalunagoods python manage.py collectstatic --no-input --clear
sudo docker-compose -f prod.yml run --rm calen_blog python manage.py collectstatic --no-input --clear
sudo docker-compose -f prod.yml run --rm instabot_django python manage.py collectstatic --no-input --clear