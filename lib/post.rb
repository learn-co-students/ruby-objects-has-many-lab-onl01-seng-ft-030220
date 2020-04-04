class Post

  @@all = []
  attr_accessor :title, :author
  def initialize(title)
    @title = title
    @@all << self

  end

  def new
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if author
      author.name
    else
      nil
    end
  end

end

    # learn spec/post_spec.rb
