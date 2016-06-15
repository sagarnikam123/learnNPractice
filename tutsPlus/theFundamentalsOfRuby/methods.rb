# encoding: utf-8
# methods.rb

#Classes

class Post
	attr_reader :author, :title, :body, :comments

	def initialize author, title, body, comments = []
		@author = author
		@title = title
		@body = body
		@comments = comments
	end

end


class Comment
	attr_reader :user, :body

	def initialize user, body
	end

end



# Program
# post = Post.new "Jose Mota", "My First Post", "Thhe Post is awesome"


post = Post.new author: "Jose Mota"
				title: "My First post"
				body: "The post is awesome"
				comments: []


p post.inspect


