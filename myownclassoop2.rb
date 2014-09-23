class Media
	def set_title=(title)
		@title = title
	end

	def set_artist=(artist)
		@artist = artist
	end
	def get_title
		return @title
	end

	def get_artist
		return @artist
	end
end


class Music < Media
	def set_title=(title)
		@title = title
	end

	def set_artist=(artist)
		@artist = artist
	end

	def set_genre=(genre)
		@genre = genre
	end

	def get_title
		return @title
	end

	def get_artist
		return @artist
	end

	def get_genre
		return @genre
	end

	def about_music
		return "The song is called #{@title} and it's by #{@artist}. The genre is #{@genre}."
	end

end

class Books < Media
	def set_category=(category)
		@category=category
	end

	def get_category
		return @category
	end

	def set_pages=(pages)
		@pages=pages
	end

	def get_pages
		return @pages
	end
end

my_music = Music.new
my_music.set_title = 'Sleep'
my_music.set_artist = 'Azure Ray'
my_music.set_genre = 'Indie Pop'

puts my_music.get_title
puts my_music.get_artist
puts my_music.about_music

puts my_music.inspect

