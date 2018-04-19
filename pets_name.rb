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
    return "squeeeee"
  end

end

my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name
puts "#{ferret_name} says #{my_ferret.squeal}."

puts my_ferret.inspect



# **************************************************
# Create an object of your choosing:

class Cat

  def set_name=(cat_name)
    @name = cat_name
  end

  def get_name
    return @name
  end

  def set_gender=(cat_gender)
    @gender = cat_gender
  end

  def get_gender
    return @gender
  end

  def set_color=(cat_color)
    @color = cat_color
  end

  def get_color
    return @color
  end

  def meow
    return "meoooow"
  end
end

my_cat = Cat.new
my_cat.set_name="Lexi"
cat_name = my_cat.get_name
my_cat.set_gender="female"
cat_gender = my_cat.get_gender
my_cat.set_color="blue Lynx"
cat_color = my_cat.get_color

puts "#{cat_name} says #{my_cat.meow}!"
puts "My kitty #{cat_name} is a #{cat_gender} who is a beautiful #{cat_color} princess!"
