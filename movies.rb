movies = {
  Last_of_the_mohicans: 5,
  Matrix: 4
}
puts movies

def ask_for_title
    puts "Enter movie title"
    return gets.chomp.to_sym
end

def ask_for_rating
    puts "Enter rating"
    return gets.chomp.to_i
end

puts "Select action [1: add, 2: update, 3: display, 4: delete]"
choice = gets.chomp

case choice
when "1" # Add
    title = ask_for_title
    rating = ask_for_rating
  	if movies[title] == nil
  		movies[title] = rating
    else
      puts "Movie already exists!"
    end
    puts movies
  when "2" # Update
    title = ask_for_title
    rating = ask_for_rating
  	if movies[title] == nil
      puts "Movie does no exist!"
    else
      movies[title] = rating
    end
    puts movies
  when "3"
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
  when "4"
    title = ask_for_title
    if movies[title] == nil
      puts "Movie does no exist!"
    else
      movies.delete(title)
    end
  else
    puts "Error!"
end

puts movies
