def alphabetize(items, rev=false)
  items.sort!
  if rev
    return items
  else
    return items.reverse!
  end
end

numbers = [5, 1, 3, 8]
p alphabetize(numbers)
p alphabetize(numbers, true)
