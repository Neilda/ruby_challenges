
#Create a class with the title Ferret. Make sure to capitalize the name
class Ferret

#Make sure that all ferrets have names. The @ makes it an instance variable
	def set_name= (ferret_name)
		@name = ferret_name
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

	def squeal
		return "squeeeee"
	end

end

my_ferret = Ferret.new
my_ferret.set_name="Fredo"
ferretname = my_ferret.get_name
puts "#{ferretname} says #{my_ferret.squeal}"