filename = ARGV[0]

txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()
txt.rewind
puts "\nHere's your file again: #{filename}"
puts txt.read()
txt.close

print "\nI'll ask you to type it again:\n> "
file_again = STDIN.gets.chomp()


txt_again = File.open(file_again)
puts txt_again.read()
txt_again.close