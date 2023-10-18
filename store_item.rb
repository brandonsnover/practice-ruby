item1 = { name: "Couch", price: 600, color: "black" }
item2 = { name: "Chair", price: 200, color: "red" }
item3 = { :name => "Bed", :price => 900, :color => "blue" }

puts "#{item1[:name]} cost $#{item1[:price]} and is #{item1[:color]}"

class Items
  attr_reader :name, :price, :color
  attr_writer :price

  def initialize(name, price, color)
    @name = name
    @price = price
    @color = color
  end

  def print_info
    puts "#{name} cost $#{price} and is #{color}"
  end
end

item1 = Items.new("Couch", 600, "black")
item2 = Items.new("Chair", 200, "red")
item1.price = 700
item1.print_info
pp item2.name
