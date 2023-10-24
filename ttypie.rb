require "tty-pie"

data = [
  { name: "Stars", value: 50, color: :bright_yellow, fill: "*" },
  { name: "Ex's", value: 25, color: :bright_green, fill: "x" },
  { name: "At's", value: 15, color: :bright_magenta, fill: "@" },
  { name: "Plus", value: 10, color: :bright_cyan, fill: "+" },
]

pie_chart = TTY::Pie.new(data: data, radius: 7)

print pie_chart
