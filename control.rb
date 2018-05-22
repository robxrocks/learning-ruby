count = 1
tries = 1

if count > 10
  puts "Try again"
elsif tries == 3
  puts "Lose"
else
  puts "Enter"
end

weight = 90
pallet = 25

while weight < 100 and pallet <=30
  puts "Next pallet"
  weight += 1
  pallet += 1
end

radiation = 4500

puts "Danger" if radiation > 3000
