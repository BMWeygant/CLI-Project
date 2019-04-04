require 'pry'
require_relative 'scraper.rb'
class CLI

attr_accessor :card_array

  def initialize
    @card_array = Scraper.scrape_muthead
  end

  def run

    welcome

    card_list

    input = ""
    until input == "gtfoh"
      input = gets.strip

    card = @card_array[input.to_i - 1]
    if !card
      puts "Wtf are you talking about? Try again."

      run
    else
      puts "#{card[:name]} - #{card[:program]}
              Position: #{card[:position]}
              Overall: #{card[:ovr]}
              Last AH Price: #{card[:price]}"

      puts "Choose another card, or type 'gtfoh' to exit!"
      end
    end
  end


  def card_list
    @card_array.each_with_index do |card, index|
    puts "#{index+1}. #{card[:name]} - #{card[:program]}"
    end
  end

  # def choose_another
  #   puts ""
  # end

  def welcome
    puts "Welcome!"
    puts "Here is a VERY brief list of the best cards avaialble for Madden Ultimate Team."
    puts "Enter the number next to the corresponding player name to view the cards information."
    puts "To gtfoh, just type 'gtfoh' at anytime."
  end

end
