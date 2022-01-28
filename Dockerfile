FROM python:3

RUN apt-get update && \
    apt-get install -y tor privoxy runit

ENV http_proxy localhost:3128
ENV https_proxy localhost:3128

WORKDIR /app

COPY . /app
CMD runsvdir service && entrypoint
