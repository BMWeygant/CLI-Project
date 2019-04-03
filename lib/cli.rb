require 'pry'
require_relative 'scraper.rb'
class CLI

attr_accessor :card_array

  def initialize
    @card_array = Scraper.scrape_muthead
  end

  def run
    puts "Welcome!"
    puts "Here is a VERY breif list of the best cards avaialble for Madden Ultimate Team."
    puts "Enter the number next to the corresponding player name to view the cards information."
    puts "To gtfoh, just type 'gtfoh' at anytime."

binding.pry
    @card_array

    #input = gets.strip


  end
end
