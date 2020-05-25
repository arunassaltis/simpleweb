FROM debian:latest
LABEL maintainer="Arunas"
RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-flask

COPY . /app
WORKDIR ./app
EXPOSE 4000
CMD ["python", "app.py"]
