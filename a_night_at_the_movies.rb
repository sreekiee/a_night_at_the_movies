movies = {
  batman: 4
}

puts "Enter your choice"
choice = gets.chomp

case choice
  when "add"
  	puts "Add a title"
    title = gets.chomp
  	puts "Add rating"
    rating = gets.chomp
  	if movies[title.to_sym] == nil
  		movies[title.to_sym] = rating.to_i
    else
      puts "Movie already exists"
    end
  when "update"
    puts "Enter the title"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "Movie not there"
    else
      puts "Enter new rating"
      rating = gets.chomp
      movies[title.to_sym] = rating
    end
  when "display"
    movies.each { |key, val| puts "#{key}: #{val}" }
  when "delete"
    puts "Enter the title"
  	title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "There is no such movie"
    else
      movies.delete(title)
    end
  else
    puts "Error!"
end
