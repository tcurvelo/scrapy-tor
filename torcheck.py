#!/usr/bin/env python
import scrapy
from scrapy.crawler import CrawlerProcess


class TorcheckSpider(scrapy.Spider):
    name = "torcheck"
    allowed_domains = ["torproject.org"]
    start_urls = ["https://check.torproject.org/"]

    def parse(self, response):
        msg = response.css("title::text").get("").strip()
        self.logger.info(f"\n\n✨ {msg} ✨\n\n")


if __name__ == "__main__":
    process = CrawlerProcess()
    process.crawl(TorcheckSpider)
    process.start()
