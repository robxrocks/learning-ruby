my_array = [[1,2], ["a", "b"], [3, "c"]]
puts my_array.inspect
p my_array

my_array.each do |element|
  element.each do |item|
    puts item
  end
end
