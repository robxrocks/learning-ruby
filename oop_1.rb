# classes
class Person
	def initialize(name)
    @name = name
  end
end

matz = Person.new("Yukihiro")


### Scope
class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


# practice
class Message
  @@messages_sent = 0

  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

class Email < Message
  def initialize(from, to)
    super
  end
  # def initialize(subject)
  #   @subject = subject
  # end
end

my_message = Message.new("bob", "alice")

# practice
class Computer
  @@users = Hash.new

  def initialize(username, password)
    @username = username
    @password = password
    @files = Hash.new
    @@users[username] = password
  end

  def create(filename)
  	time = Time.now
    @files[filename] = time
    puts "New file: #{filename} was created at: #{time} by user: #{@username}"
  end

  def self.get_users
  	@@users
  end
end

my_computer = Computer.new("bob", 12345)
my_computer.create("newlist.txt")
alice_computer = Computer.new("alice", 6789)
alice_computer.create("aliceList.jpg")
puts "All users #{Computer.get_users}"
