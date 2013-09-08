class Song
  
  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    for line in @lyrics
      puts line
    end
  end
end

happy_bday = Song.new(["Happy birthday to you",
                      "I don't want to get sued",
                      "So I'll stop right there"])
                      
bulls_on_parade = Song.new(["They rally around the family",
                          "With pockets full of shells"])
                          
hey_jude_lyrics = ["Hey Jude", "Don't Make it bad",
                  "Take a sad song", "And make it better"]
                  
hey_jude = Song.new(hey_jude_lyrics)
                          
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

hey_jude.sing_me_a_song()