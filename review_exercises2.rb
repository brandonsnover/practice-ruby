sam_recipes = ["pizza", "steak", "chicken", "cake", "crepes"]
sally_languages = ["English", "German", "Spanish", "Polish"]

if sam_recipes.length > 10 && sally_languages.length > 5
  puts "Sam and Sally should date."
else
  puts "Sam and Sally should not date."
end

if sam_recipes.include? "crepes"
  puts "Sam and Sally should marry"
elsif sally_languages.include? "French"
  puts "Sam and Sally should marry"
else
  puts "Sam and Sally should not marry"
end
