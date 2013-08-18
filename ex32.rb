the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots', 'pears']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through an array
for number in the_count
  puts "This is count #{number}"
end

# I added this one
the_count.each do |my_count|
  puts "The current counter is #{my_count}"
end

# same as above, but using a block instead
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go though mixed arrays too
for i in change
  puts "I got #{i}"
end

# we can also build arrays; first start with an empty one
elements = []

# then use a range object to do 0 to 5 counts
for i in (0..5)
  puts "Adding #{i} to the range list."
  # push is a function that arrays understand
  elements.push(i)
end

# now we can puts them out too
for i in elements
  puts "Element was: #{i}"
end

# another way to use range
elements = (0..5).to_a
puts "elements = #{elements}"
for i in elements
  puts "Element #2 was: #{i}"
end