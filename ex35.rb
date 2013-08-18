def prompt()
  print "> "
end

def gold_room()
  puts "This is a room full of gold. How much do you take?"
  
  prompt; next_move = gets.chomp
#  if next_move.include? "0" or next_move.include? "1"
  how_much = next_move.to_i()
  if how_much <= 0
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice, your not greedy, you win!!!"
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end
end
  
def bear_room()
  puts "There is a bear in here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false
  
  while true
    prompt; next_move = gets.chomp
    
    if next_move.include? "take" and next_move.include? "honey"
      dead("The bear looks ar you and slaps your face off.")
    elsif next_move.include? "taunt" and not bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif next_move.include? "taunt" and bear_moved
      dead("The bear gets pissed off and chews your spleen off.")
    elsif next_move.include? "open" and bear_moved
      gold_room()
    else
      puts "Ain't nobody got time for that."
    end
  end
end

def cthulhu_room()
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane"
  puts "Do you flee for your life or ear your head?"
  
  prompt; next_move = gets.chomp
  
  if next_move.include? "flee"
    start()
  elsif next_move.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room()
  end
end

def dead(why)
  puts "#{why} Now you are pushing up daisies!"
  Process.exit(0)
end
  
def start()
  puts "You are in a dark room."
  puts "There is a door to your right ald left."
  puts "Which one do you take?"
  
  prompt; next_move = gets.chomp
  
  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulhu_room()
  else
    dead("You stumble around the room until you starve.")
  end
end  
  
start()