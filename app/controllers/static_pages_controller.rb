class StaticPagesController < ApplicationController

	# before_action :authenticate_user!
	# before_action :authenticate_admin!, except: [:index, :show]

	def index
		@faqs = Faq.limit(3)
		@page = Page.find_by(model_index: params[:controller])
	end

end
