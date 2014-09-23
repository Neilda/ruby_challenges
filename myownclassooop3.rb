class Music 
	attr_writer :title, :artist, :genre
	attr_reader :title, :artist, :genre
	def about_music
		return "The song is called #{@title} and it's by #{@artist}. The genre is #{@genre}."
	end

my_music = Music.new
my_music.title = 'Sleep'
my_music.artist = 'Azure Ray'
my_music.genre = 'Indie Pop'

puts my_music.about_music

end