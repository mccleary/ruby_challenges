# simple blog (not connected to database) input/output using gets/puts methods

class Blog
  #puts all posts in an array
  @@all_blog_posts = []
  @@num_blog_posts = 0

  def self.all
    @@all_blog_posts
  end

  def self.add(info)
    @@all_blog_posts << info
    @@num_blog_posts += 1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Content:\n #{post.content}"
      puts "Author:\n #{post.author}"
      puts "Date Published:\n #{post.date_published}"
    end
  end

end


class BlogPost < Blog

  def self.create
    post = new
      puts "What is your Title?"
      post.title = gets.chomp
      puts "Write your content:"
      post.content = gets.chomp
      puts "Who is the Author?"
      post.author = gets.chomp
      post.date_published = Time.now
      post.save
      puts "Do you want to create a new blog post?[Y/N]"
      create if gets.chomp.downcase == "y"
      # if "y" continues to run "create" method, otherwise "n" stops the script from running again.
  end

  # setter method for blog title
  def title
    @title
  end

  # getter method for blog title
  def title=(title)  # setter method always takes an argument
    @title = title   # add the instance variable
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  def date_published
    @date_published
  end

  def date_published=(date_published)
    @date_published = date_published
  end

  def save
    BlogPost.add(self)
  end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
