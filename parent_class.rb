# Create a Parent class object
class Book

  def set_title=(title)
    @title = title
  end

  def get_title
    return @title
  end

  def set_author=(author)
    @author = author
  end

  def get_author
    return @author
  end

  def set_publisher=(publisher)
    @publisher = publisher
  end

  def get_publisher
    return @publisher
  end

  def about_book
    return "#{@title} is written by #{@author} and published by #{@publisher} in 1983."
  end
end

my_book = Book.new
my_book.set_title = "Pet Sematary"
my_book.set_author = "Stephen King"
my_book.set_publisher = "Simon & Schuster"

puts my_book.about_book
