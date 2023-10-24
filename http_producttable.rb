require "http"
require "tty-table"

data = HTTP.get("http://localhost:3000/all_products.json")
list = data.parse

table = TTY::Table.new(["name", "price"], [[list[0]["name"], list[0]["price"]], [list[1]["name"], list[1]["price"]], [list[2]["name"], list[2]["price"]]])

table.render do |renderer|
  renderer.border.separator = :each_row
end

puts table.render(:unicode, alignment: [:center])
