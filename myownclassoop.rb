class Puppy
	def set_name= (puppy_name)
		@name = puppy_name
	end

	def get_name
		return @name
	end

	def bark
		return "woof woof"
	end

end

my_puppy = Puppy.new
my_puppy.set_name="Buddy"
puppyname = my_puppy.get_name
puts "#{puppyname} says #{my_puppy.bark}"