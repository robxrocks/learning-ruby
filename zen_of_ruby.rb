# one-line if
ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly


# simpler 'if'
puts "True" if true

some_condition = false
puts "False" unless some_condition


# ternary operator
some_condition = true
puts some_condition ? some_condition : some_condition


# case with 'then'
puts "Hello there!"
greeting = gets.chomp

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
	else puts "I don't know that language!"
end


# conditional assignment
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_language = "English"
puts favorite_language


# implicit return
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

puts multiple_of_three(3)


# Short-Circuit Evaluation
def a
  puts "A was evaluated!"
  return false
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b


# repetitions
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each {|x| puts x if x % 2 == 0}


# one-line for loop
3.times {puts "I'm a refactoring master!"}


# .upto and .downto
"L".upto("P") {|letter| puts letter}
100.downto(95)  { |num| print num, " " }


# .respond_to? method
age = 26
age.respond_to?(:next) # detect integer
age.respond_to?(:to_i)
[1, 2, 3].respond_to?(:push)
[1, 2, 3].respond_to?(:to_sym)


# concatenation operator ('the shovel')
alphabet = ["a", "b", "c"]
#alphabet.push("d")# ==> "I am 26 years old."
alphabet << "d"
puts alphabet

caption = "A giraffe surrounded by "
#caption += "weezards!"
caption << "weezards!"
puts caption


# String Interpolation
age = 26
"I am " + age.to_s + " years old."
"I am " << age.to_s << " years old."

"I am #{age} years old." # better way
