#FROM python:3.11-slim-buster
FROM python:3.11.11-alpine3.21
ENV AppPath=/app
RUN mkdir -p $AppPath

WORKDIR $AppPath

COPY movie_app/ $AppPath/movie_app
COPY requirements.txt $AppPath
COPY manage.py $AppPath
COPY .env $AppPath

RUN pip install -r requirements.txt

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]