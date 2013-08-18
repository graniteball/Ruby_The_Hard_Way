def import_states_table(filename)

# Read states, abbreviations, and capitals from 

  state_abbrevs = {}
  state_capitals = {}

  File.open(filename, 'r').each_line do |line|
    line_array = line.split(',')
    state_abbrevs[line_array[0].upcase] = line_array[1].upcase
    state_capitals[line_array[1].upcase] = line_array[2].upcase
  end

  # get rid of the headers
  
  state_abbrevs.delete('name')
  state_capitals.delete('abbreviation')

  return state_abbrevs, state_capitals
  
end

dashes = '-' * 10

abbrevs, capitals = import_states_table('states.csv')

read_from_table = true

# puts out some capitals
puts dashes
print "NY State has: ", capitals['NY'], "\n"
print "OR State has: ", capitals['OR'], "\n"

# puts some states
puts dashes
print "Michigan's abbreviation is: ", abbrevs['Michigan'.upcase], "\n"
print "Florida's abbreviation is: ", abbrevs['Florida'.upcase], "\n"

# do it by using the state then capitals dict
puts dashes
print "Michigan has: ", capitals[abbrevs['Michigan'.upcase]], "\n"
print "Florida has: ", capitals[abbrevs['Florida'.upcase]], "\n"

# puts every state abreviation
puts dashes
for state, abbrev in abbrevs
  print "%s is abbreviated %s" % [state, abbrev], "\n"
end

# puts every capital in state
puts dashes
for abbrev, capital in capitals
  print "%s has the capital %s" % [abbrev, capital], "\n"
end

# now do both at the same time
puts dashes
for state, abbrev in abbrevs
  print "%s state is abbreviated %s and has the city %s" % [state, abbrev, capitals[abbrev]], "\n"
end

