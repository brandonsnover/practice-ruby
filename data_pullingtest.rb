require "http"

data = HTTP.get("https://data.sfgov.org/resource/jjew-r69b.json")
list = data.parse

count = 0
applicants = []
while count < list.length
  applicants.push(list[count]["applicant"])
  count += 1
end

puts applicants.uniq
