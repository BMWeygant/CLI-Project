require 'pry'
require 'open-uri'
require 'nokogiri'
require_relative 'card.rb'

class Scraper

CARDS =[]

  def self.scrape_muthead
      #html = open(NFL_STATS)
      doc = Nokogiri::HTML(open("https://www.muthead.com/19/players"))
      # cards = []
      #binding.pry

      doc.css("tr.even, tr.odd").each do |details|
        name = details.css("a").text.strip
        program = details.css("span").text.strip
        ovr = details.css(".col-overall").text.strip
        position = details.css(".col-position").text.strip
        price = details.css(".col-price").text.strip
        CARDS << {
          name: name,
          program: program,
          ovr: ovr,
          position: position,
          price: price
        }
        #binding.pry
      end
      binding.pry
    end
scrape_muthead
end
