# Using class mathods/variables

class Ferret

  @@total_ferrets = 0    # class variables use an extra @ sign

  def initialize         # to modify new method
    @@total_ferrets += 1
  end

  def self.current_count    # can also write as Ferret.current_count (both refer to the class itself and distinguishes a class method from an instance method)
    puts "There are currently #{@@total_ferrets} instances of my Ferret class"
  end


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
my_ferret.set_name = "Fredo"
ferret_name = my_ferret.get_name

# once you create your instance variable of a Ferret, you can start to use instance methods
Ferret.current_count
Ferret.inspect
my_ferret.inspect


my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchilla_name = my_chinchilla.get_name

my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name

puts "#{ferret_name} says #{my_ferret.squeal}, #{chinchilla_name} says #{my_chinchilla.squeek}, and  #{parrot_name} says #{my_parrot.tweet}."

puts my_ferret.inspect
puts my_chinchilla.inspect
puts my_parrot.inspect
