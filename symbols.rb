puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id
puts :new_symbol.object_id
puts :new_symbol.object_id

symbol_hash = {
  :one => 1,
  :two => 2,    # Fill in these two blanks!
  :three => "three",
}

puts symbol_hash


strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end

puts symbols.inspect
p symbols


strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each do |s|
  symbols.push(s.intern)
end
p symbols


movies = {
  :blade_runner => "replicants",
  :alien => "cool and scary alien monsters",
}

# The hash syntax changed in Ruby 1.9
movies = {
  blade_runner: "replicants",
  alien: "cool and scary alien monsters"
}
puts movies

#######################################################
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."


#######################################################
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

puts movie_ratings.select {|title, rating| rating > 3}

movie_ratings.select {|title, rating| puts title}
