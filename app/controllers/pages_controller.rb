class PagesController < PostsController
	def index
		@posts = Post.all
	end
end
