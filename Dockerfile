FROM python:3

RUN apt-get update && apt-get install -y \
    netcat \
    privoxy \
    runit \
    tor \
    && rm -rf /var/lib/apt/lists/*

ENV http_proxy=localhost:3128
ENV https_proxy=localhost:3128

WORKDIR /opt
COPY . .

ENTRYPOINT ["./entrypoint.sh"]
CMD ["python"]