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

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
CMD ["python"]