FROM python:3

RUN apt-get update && apt-get install -y \
    netcat \
    privoxy \
    runit \
    tor \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir scrapy

WORKDIR /opt
COPY . .

ENTRYPOINT ["./entrypoint.sh"]
CMD ["./torcheck.py"]
