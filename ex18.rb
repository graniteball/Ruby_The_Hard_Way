# this one is like your scropts with argv
def puts_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this
# actually its not because it allows additional, unused arguments
def puts_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this jut takes one arguement
def puts_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no arguements
def puts_none()
  puts "I got nothin'."
end

puts_two("Alan", "Gilbert", "Salami")
puts_two_again("Alan","Gilbert")
puts_one("First!")
puts_none()
  