class VisitorsController < PostsController
	def index
		@posts = Post.all.limit(3).reverse_order
		@primeuser = User.first
	end
end
