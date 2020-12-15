class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    sum = 0
    characters.each do |character|
      sum += character.salary
    end
    sum
  end

  def highest_paid_actor
    characters.max_by do |character|
      character.salary
      return character.actor
    end
  end

  def actors
    characters.map do |character|
      character.actor
    end
  end
end
