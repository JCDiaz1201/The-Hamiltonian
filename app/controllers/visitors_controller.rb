class VisitorsController < ApplicationController
	def index
		@posts = Post.all.limit(3).reverse_order
		@primeuser = User.first #only using this to show the name of the only user, stoo-gap measure
	end
end
