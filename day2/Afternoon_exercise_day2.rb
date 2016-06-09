class Post
	attr_reader :title, :date, :text
    def initialize(title, date, text)
        @title = title
        @date = date
        @text = text    
    end


end    

class Blog
	def initialize
		@posts = []
	end
	def add_post(post)
		@posts.push(post)
	end

end

blog = Blog.new
blog.add_post(Post.new("title1", 5, "Post1 text"))
blog.add_post(Post.new("title2", 6, "Post2 text"))
blog.add_post(Post.new("title3", 8, "Post3 text"))

add_post(blog)




# posts = [
# 	Post.new("title1", 5, "Post1 text"),
# 	Post.new("title2", 6, "Post2 text"),
# 	Post.new("title3", 8, "Post3 text")
# ]


# It has to go inside Blog class
# posts.each do |hm|
#   puts hm.title

# end


# puts "********************************"