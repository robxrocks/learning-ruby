arr = (1..5).to_a        #=> [1, 2, 3, 4, 5]

# doubles = []
# arr.each { |x| doubles.push 2*x }

# the two lines above do the same as this one:
doubles ||= arr.collect { |x| 2*x }
puts "doubles: #{doubles}"

puts "arr before using .collect!: #{arr}"
arr.collect! { |x| 3*x }
puts "arr after: #{arr}"


# transferring control from the calling method to the block and back again
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }


# Yielding With Parameters
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }


# practice
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |item| item.is_a? Integer}
p ints
