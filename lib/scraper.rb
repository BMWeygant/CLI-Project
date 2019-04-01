require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
      nfl_stats = Nokogiri::HTML(open(index_url))

      players = []
  end
end
