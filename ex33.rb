def counter_while(size, step, start)

  i = start
  numbers = []

  while i < (size + 1)
    puts "At the top i is #{i}"
    numbers.push(i)

    i += step
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  for num in numbers
    puts num
  end

end

def counter_for(size, step, start)

  i = start
  numbers = []

#  while i < (size + 1)
  (start..size).step(step) do |i| 
    puts "At the top i is #{i}"
    numbers.push(i)

    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  for num in numbers
    puts num
  end

end

print "How big do you want it? "
size = gets.to_i

print "Stepping interval? "
step = gets.to_i

print "Starting with? "
start = gets.to_i

# counter_while(size, step, start)
counter_for(size, step, start)

