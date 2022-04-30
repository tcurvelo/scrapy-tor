# scrapy-tor

Docker settings for running Scrapy spiders over the Tor network.

## Usage

Building it:

    ❯ docker build . -t scrapy-tor

Running it:

    ❯ docker run --rm scrapy-tor ./torcheck.py

About a minute later you should see:

    ...
    2022-04-30 23:46:21 [torcheck] INFO:

    ✨ Congratulations. This browser is configured to use Tor. ✨
    ...
