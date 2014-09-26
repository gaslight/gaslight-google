
module Gaslight::Google
  class Post
    def self.all
      @client = Client.new
      posts_url = @client.link_for('posts.list')
      @client.get(posts_url)
    end
  end
end
