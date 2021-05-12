# euro2021

## Passos des de 0

1. Crear la BD:
    1. A Postgresql: CREATE DATABASE euro2021;
2. Migrar:
    1. python manage.py migrate
    2. python manage.py loaddata euro2021
    3. python manage.py collectstatic
    4. instal.lar gettext
    5. python manage.py compilemessages
3. Registrar l'administrador
    1. Fer el registre com un usuari més
    2. Crear manualment el model Jugador:

`from joc.models import Jugador
from django.contrib.auth.models import User
user = User.objects.last()
user.is_active=True
user.is_staff=True
user.is_superuser=True
user.save()`

4. Actualitzar settings
    1. ID_ADMIN
