lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |key, value|
  puts value
end

my_hash = Hash.new(0)
my_hash = {"second" => 2}
my_hash["first"] = 1

new_hash = Hash.new(0)
new_hash = my_hash.sort_by {|key, value| value}

puts my_hash
puts new_hash

no_nil_hash = Hash.new(0)
puts no_nil_hash

no_nil_hash = Hash.new(0)
puts no_nil_hash["a_key"]

no_nil_hash = Hash.new("something")
puts no_nil_hash["nonexistant_key"]
