filename = ARGV[0]
script = $0

puts "We're going to erase #{filename}."
puts "If you do ***NOT*** want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'a')

puts "Truncating the file. Buh bye now!"
target.truncate(target.size)

puts "Now I am going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}\n")

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

puts "And finally, we close it."
target.close()

puts "Opening the file again, this time for reading..."
target = File.open(filename)
puts "And here is what it says..."
puts target.read()
target.close