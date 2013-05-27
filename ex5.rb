name = 'Alan J. Giblert'
age = 50 # man, that's old
height = 66 # inches
weight = 155 # wishful thinking
eyes = 'Hazel'
teeth = 'Red'
hair = 'Brown'
pounds_per_kilo = 2.2
inches_per_cm = 1 / 2.54

puts "Let's talk about %s." % name
puts "He's %.2f inches or %.2f cm tall." % [height, height / inches_per_cm]
puts "He's %.2f pounds or %.2f kilos heavy." % [weight, weight / pounds_per_kilo]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# Tricky!

puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]