class Author

  attr_accessor :name, :posts

  def self.post_count
    Post.all.length
  end

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def posts
    Post.all
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

end
