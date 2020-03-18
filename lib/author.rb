class Author
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def add_post(post)
    post.author = self
  end
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  def posts
    Post.all.select { |post| post.title = self }
  end
  def self.post_count
    Post.all.length
  end
end
#
# def add_song_by_name(name)
#   song = Song.new(name)
#   add_song(song)
# end


# learn spec/author_spec.rb
