#!/bin/bash
python3 manage.py collectstatic --noinput --settings=settings.prod
python3 manage.py migrate --settings=settings.prod
python3 manage.py check --deploy --settings=settings.prod
python3 manage.py runserver 0:8000 --settings=settings.prod
