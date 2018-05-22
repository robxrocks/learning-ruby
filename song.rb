class Song
  def initialize(music)
    @music = music
    puts "\nWriting a new song"
  end

  def play
    puts "Playing: #{@music}"
  end
end

