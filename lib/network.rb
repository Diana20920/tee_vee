class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show_name)
    shows.push(show_name)
  end

  def main_characters
    main_characters = []
    shows.each do |show|
      # require "pry"; binding.pry
      show.characters.each do |character|
        character.salary > 500_000
        # character.name.upcase? == true
        @main_characters << character
      end
    end
  end
end

#for network, to access each character:
#shows.first.characters[-2].name
