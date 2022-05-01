# scrapy-tor

Docker settings for running Scrapy spiders over the Tor network.

## Usage

    ❯ docker run --rm tcurvelo/scrapy-tor ./torcheck.py

About a minute later you should see:

    ...
    2022-04-30 23:46:21 [torcheck] INFO:

    ✨ Congratulations. This browser is configured to use Tor. ✨
    ...

### Launching a Tor-enabled Scrapy shell

    docker run -it --rm tcurvelo/scrapy-tor scrapy shell

### Bringing it into your Scrapy project

Simply extend it in your `Dockerfile`:

    FROM tcurvelo/scrapy-tor
    COPY . .
    RUN pip install -r requirements.txt

Then build and run:

    ❯ docker build . -t my-scrapy-project
    ❯ docker run -it my-scrapy-project scrapy crawl my_spider

🕷️🧅
