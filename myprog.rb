#!/home/rob_octo/.rvm/rubies/ruby-2.5.0/bin/ruby -w
require("./song.rb")

puts "Hello World!"

melody = "dum dum dum ..."

song = Song.new(melody)

song.play

melody = "dam dam dadada dam ..."

song2 = Song.new(melody)

song2.play

