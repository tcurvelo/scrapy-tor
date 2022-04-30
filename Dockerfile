FROM python:3

RUN apt-get update && apt-get install -y \
    netcat \
    privoxy \
    runit \
    tor \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ENV http_proxy=http://localhost:3128
ENV https_proxy=http://localhost:3128

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
CMD ["python"]