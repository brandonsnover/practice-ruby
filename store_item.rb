require "./shelf_life.rb"

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

class Food < Items
  include Shelf_life
end
