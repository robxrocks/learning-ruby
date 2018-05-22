# public and private methods
class Dog
	def initialize(name, breed)
  	@name = name
    @breed = breed
  end

  public
  def bark
    puts "Woof!"
  end

  private
  def id
    @id_number = 12345
  end
end


# reader/writer & accessor
class Person
  attr_reader :name
  attr_writer :name
  attr_accessor :job

  def initialize(name, job)
    @name = name
    @job = job
  end
end

# modules
module Circle
  PI = 3.14

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end

puts "#{Circle::PI}"

# require a module
require 'date'

puts Date.today

# include a module
class Angle
  include Math
  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine

# extend
# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
