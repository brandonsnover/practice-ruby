favorite_foods = []
index = 0
while index < 5
  puts "What is your favorite food?"
  food = gets.chomp
  favorite_foods << food
  index += 1
end

favorite_foods.each do |food|
  pp "I Love #{food}"
end
