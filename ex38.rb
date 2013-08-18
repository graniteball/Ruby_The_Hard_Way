ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length < 10
  next_one = more_stuff.pop()
  puts "Adding:%s" % next_one
  stuff.push(next_one)
  puts "There's %d items now." % stuff.length
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff." 

puts stuff[1]
puts stuff[-1] # woah! fancy
puts stuff.pop()
puts stuff.join(' ') # what? cool!
puts stuff.values_at(3,5).join('#') # super stellar!
while stuff.length > 0
  puts "popped value = #{stuff.pop()}"
  puts "here's what's left #{stuff}"
end