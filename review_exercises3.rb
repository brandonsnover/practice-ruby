count = 0
people = []
while count < 5
  person = {}
  puts "Enter a first name:"
  person[:first_name] = gets.chomp
  puts "Enter a last name:"
  person[:last_name] = gets.chomp
  puts "Enter an email:"
  person[:email] = gets.chomp
  person[:account_number] = rand 1000000000..9999999999
  people.push(person)
  count += 1
end
pp people

count2 = 0
while count2 < people.length
  puts "FIRST NAME: #{people[count2][:first_name]}"
  puts "LAST NAME: #{people[count2][:last_name]}"
  puts "EMAIL: #{people[count2][:email]}"
  puts "ACCT #: #{people[count2][:account_number]}"
  count2 += 1
end
