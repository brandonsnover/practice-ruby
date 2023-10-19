require "./store_item.rb"

item1 = Items.new("Couch", 600, "black")
item2 = Items.new("Chair", 200, "red")
item3 = Food.new("Apple", 2, "red")
item1.price = 700
item1.print_info
pp item2.name
item3.print_info
p item3.shelf_life
