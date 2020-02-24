EURO 2020

# Following https://docs.docker.com/compose/django/

1. Create Dockerfile, docker-compose and requirements.txt
2. Run: docker-compose run web django-admin startproject euro2020 /opt/euro2020
3. Run: docker-compose run db createdb -h db -U postgres euro2020
4. Run: docker-compose run -w "/opt/euro2020" web python manage.py startapp joc
5. Copy models.py from mundial2018
