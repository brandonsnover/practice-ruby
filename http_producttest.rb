require "http"

data = HTTP.get("http://localhost:3000/all_products.json")
list = data.parse

puts list
