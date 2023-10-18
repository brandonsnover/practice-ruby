a = [1, 2]
b = [1]

count = 0
while count < a.length
  count2 = 0
  while count2 < b.length
    if a[count] == b[count2]
      a.delete(b[count2])
    end
    count2 += 1
  end
  count += 1
end

pp a
