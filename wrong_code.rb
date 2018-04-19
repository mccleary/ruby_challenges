# What's wrong with the following code?
# spelling errors, missing methods, etc. How can it be more efficient? Fix code below using error messages to guide.


# class ferret
#
# 	def set_name = (ferret_name)
# 		@name = ferret_name
# 	end
#
# 	def get_name
# 		return @name
# 	end
#
# 	def set_owner=(owner_name)
# 		@owner_name = owner_name
# 	end
#
# 	def get_owner
# 		return @owner_name
# 	end
#
# 	def squeal
# 		return "squeeeeee"
# 	end
#
# end
#
# class Chincilla
#
# 	def set_name=(chinchilla_name)
# 		@name = chinchilla_name
# 	end
#
# 	def set_owner=(owner_name)
# 		@owner_name = owner_name
# 	end
#
# 	def get_owner
# 		return @owner_name
# 	end
#
# 	def squeek
# 		return "eeeep"
# 	end
#
# end
#
# class Parrot
#
# 	def set_name=(parrot_name)
# 		@name = name
# 	end
#
# 	def get_name
# 		return @name
# 	end
#
# 	def set_owner=(owner_name)
# 		@owner_name = owner_name
# 	end
#
# 	def get_owner
# 		return @owner_name
# 	end
#
# end
#
# my_ferret = Ferret.new
# my_ferret.set_name= "Fredo"
# ferretname = my_ferret.get_name
#
# my_parrot = Parrot.new
# my_parrot.set_name= "Budgie"
# parrotname = my_parrot.get_name
#
# my_chincilla = Chincilla.new
# my_chincilla.set_name= "Dali"
# chincillaname = my_chincilla.get_name
#
# puts "#{ferretname} says #{my_ferret.squeal},
# #{parrotname} says #{my_parrot.tweet},
# and #{chincillaname} says #{my_chincilla.squeek}."
#
# puts my_ferret.inspect
# puts my_parrot.inspect
# puts my_chincilla.inspect



# My corrected version
class Ferret

	def set_name=(ferret_name)
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
		return "squeeeeee"
	end

end

class Chinchilla

	def set_name=(chinchilla_name)
		@name = chinchilla_name
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

	def squeek
		return "eeeep"
	end

end

class Parrot

	def set_name=(parrot_name)
		@name = parrot_name
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

  def tweet
		return "hello"
	end

end

my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name

my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchilla_name = my_chinchilla.get_name

my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name

puts "#{ferret_name} says #{my_ferret.squeal},
#{chinchilla_name} says #{my_chinchilla.squeek}, and  #{parrot_name} says #{my_parrot.tweet}."

puts my_ferret.inspect
puts my_chinchilla.inspect
puts my_parrot.inspect
