# refactor the following class using attribute accessors.
# attr_writers are setters and attr_readers are getters

# original code
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
puts "My kitty #{cat_name} is a #{cat_gender} cat who is a beautiful #{cat_color} princess!"


# *******************************************************************
# refactored using attribute & accessors
class Cat

  attr_writer :name, :gender, :color
  attr_reader :name, :gender, :color

  def meow
    return "meoooow"
  end
end

my_cat = Cat.new
my_cat.name="Lexi"
cat_name = my_cat.name
my_cat.gender="female"
cat_gender = my_cat.gender
my_cat.color="blue Lynx"
cat_color = my_cat.color

puts "#{cat_name} says #{my_cat.meow}!"
puts "My kitty #{cat_name} is a #{cat_gender} cat who is a beautiful #{cat_color} princess!"


# *******************************************************************
# refactored again using attr_accessor
class Cat

  attr_accessor :name, :gender, :color

  def meow
    return "meoooow"
  end
end

my_cat = Cat.new
my_cat.name="Lexi"
cat_name = my_cat.name
my_cat.gender="female"
cat_gender = my_cat.gender
my_cat.color="blue Lynx"
cat_color = my_cat.color

puts "#{cat_name} says #{my_cat.meow}!"
puts "My kitty #{cat_name} is a #{cat_gender} cat who is a beautiful #{cat_color} princess!"
