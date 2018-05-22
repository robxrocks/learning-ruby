def puts_1_to_10
  (1..10).each { |i| puts i }
end
puts_1_to_10

def array_of_10
  puts (1..10).to_a
end
array_of_10

def add(*numbers)
  result = 0
  numbers.each {|number| result += number}
  return result
end
puts add(1)
puts add(1, 2)
puts add(1, 2, 3)

def greeter(name)
  return "Grretings #{name}!"
end

def by_three?(number)
  return number % 3 == 0
end
puts by_three?(2)

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
puts books.sort!

puts books[3] <=> books[4]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
puts books.sort!.reverse!


fruits = ["orange", "apple", "banana", "pear", "grapes"]

p fruits.sort! {|fruit1, fruit2| fruit2 <=> fruit1}
