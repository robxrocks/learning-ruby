# Procs
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end
p (1..100).to_a.select(&multiples_of_3)


floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |x| x.floor }

ints = floats.collect(&round_down)
p ints


# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |n| n >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

p can_ride_1
p can_ride_2
p can_ride_3


# pass prog to yielding method
def greeter()
  yield
end

phrase = Proc.new { puts "Hello there!" }
greeter(&phrase)


#  Calling a proc with a method
hi = Proc.new { puts "Hello!" }
hi.call


# symbols & Procs
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)
p strings_array

# practice
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |x| x < 100 }
youngsters = ages.select(&under_100)
p youngsters
