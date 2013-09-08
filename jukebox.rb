class Song
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
end

class Song
  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
end

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  def to_s
      super + " [#{@lyrics}]"
    end
end
    
aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.to_s

aSong = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts aSong.to_s
