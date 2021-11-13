FROM python:3.9

LABEL maintainer="reOiL"

WORKDIR /app

RUN apt-get upgrade -y && apt-get update -y

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN python manage.py compilemessages
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]