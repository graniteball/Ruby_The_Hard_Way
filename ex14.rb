given = ARGV[0]
sur = ARGV[1]

prompt = '> '

puts "Hi #{given}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{given}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{given}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alight #{given} #{sur}, so you have said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
MESSAGE