require 'pry'
require 'open-uri'
require 'nokogiri'
require_relative 'card.rb'

class Scraper

BASE_URL = "https://www.muthead.com/19/players"

  def self.scrape_muthead
      cards = []

      doc = Nokogiri::HTML(open(BASE_URL))
      doc.css("tr.even, tr.odd").each do |details|
        name = details.css("a").text.strip
        program = details.css("span").text.strip
        ovr = details.css(".col-overall").text.strip
        position = details.css(".col-position").text.strip
        price = details.css(".col-price").text.strip
        #href =  details.css("a").attribute("href").value
        # binding.pry
        cards << {
          name: name,
          program: program,
          ovr: ovr,
          position: position,
          price: price
        }
      end
      cards
    end
end
