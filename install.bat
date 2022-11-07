:: as a preamble, launch docker containers by following command
:: C:/> docker compose up -d 

:: stop the containers by :
:: C:/> docker compose down

:: after stopping the containers, to erase the database and existing data :
:: C:/> docker volumes prune

:: upload assets
cyk asset upload assets/templatemo_560_astro_motion/

:: upload modules
cyk module upload db_init.xml actor_select.xml film.xml

:: create database tables
cyk run db_init.xml

:: load tables with some data
cyk table import -d data actor film film_actor

:: admin user will launch film module at login
cyk user update -i 1 -m film
