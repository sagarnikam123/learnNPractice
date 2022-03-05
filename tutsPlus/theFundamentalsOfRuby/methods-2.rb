# encoding: utf-8
# methods-2.rb

#Classes

class Post
	attr_reader :author, :title, :body, :comments

	def initialize options
		@author = options[:author]
		@title = options[:title]
		@body = options[:body]
		@comments_topli = options[:comments] || []
	end

	def insert_comment *comments
		comments.each { |c| @comments_topli << c }
	end

end


class Comment
	attr_reader :user, :body

	def initialize options
		@user = options[:user]
		@body = options[:body]
	end

end



# Program
# post = Post.new "Jose Mota", "My First Post", "Thhe Post is awesome"


post = Post.new author: "Jose Mota",
				title: "My First post",
				body: "The post is awesome",
				comments_topli: []



post.insert_comment Comment.new({user: "Jeffrey Way",
								body: "Nice post, I'll take it."
								}),
					Comment.new({user: "Jose Mota",
								body: "Sorry, not for sale"
								}),
					Comment.new({user: "ke Sara Sara",
								body: "Phir chahe jo ho"
								}),
					Comment.new({user: "Comentalia Mathur",
								body: "Rang de Basanti"
								})




p post.inspect
