class VisitorsController < ApplicationController
	def index
		@posts = Post.all.limit(3).reverse_order 
	end
end
