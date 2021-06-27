# webshop

webshop is an online shop built with the wagtail/django framework

## Installation

1. Install [docker](https://docs.docker.com/engine/install/ubuntu/)
2. install [docker-compose](https://docs.docker.com/compose/install/)


## Running it for the first time
Build docker compose
```bash
docker-compose build
```
Run docker compose
```bash
docker-compose up
```
You will see that the webshop contain will fail.
Open a new shell

Migrate the database
```bash
docker-compose run --rm webshop manage.py migrate
```
Load fixtures
```bash
manage.py loaddata blog/fixtures/setting cart/fixtures/setting contact/fixtures/setting home/fixtures/title order/fixtures/country order/fixtures/setting order/fixtures/shipping_method shop/fixtures/setting winwheel/fixtures/winwheel
```
Create superuser
```bash
manage.py createsuperuser
```
Kill the previous docker-compose via CTRL + C or whatever and 
run docker compose again
```bash
docker-compose up
```
## Running it not for the first time
Build docker compose if neccessary (optional)
```bash
docker-compose build
```
Run docker compose
```bash
docker-compose up
```

## Notes
Postgresql will create a daily backup with `pg_dumpall` at UTC 1AM in the pg_data folders.  
For more information about webshop checkout the [repo](https://github.com/calenwu/webshop)

## License
[MIT](https://choosealicense.com/licenses/mit/)