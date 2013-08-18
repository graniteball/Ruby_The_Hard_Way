dashes = '-' * 10

# creating a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts dashes
print "NY State has: ", cities['NY'], "\n"
print "OR State has: ", cities['OR'], "\n"

# puts some states
puts dashes
print "Michigan's abbreviation is: ", states['Michigan'], "\n"
print "Florida's abbreviation is: ", states['Florida'], "\n"

# do it by using the state then cities dict
puts dashes
print "Michigan has: ", cities[states['Michigan']], "\n"
print "Florida has: ", cities[states['Florida']], "\n"

# puts every state abreviation
puts dashes
for state, abbrev in states
  print "%s is abbreviated %s" % [state, abbrev], "\n"
end

# puts every city in state
puts dashes
for abbrev, city in cities
  print "%s has the city %s" % [abbrev, city], "\n"
end

# now do both at the same time
puts dashes
for state, abbrev in states
  print "%s state is abbreviated %s and has the city %s" % [state, abbrev, cities[abbrev]], "\n"
end
  
puts dashes
# if it's not thee you will get nil
state = states['Texas']

if not state
  puts "Sorry, no Texas."
end

# get a city with a default value
city = cities['TX'] || 'Does Not Exist'
print "The city for the state 'TX' is: %s" % city, "\n"



  


