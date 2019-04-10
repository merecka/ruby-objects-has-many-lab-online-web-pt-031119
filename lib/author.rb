class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_post(title)
    title.author = self
  end

end
