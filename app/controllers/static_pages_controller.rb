class StaticPagesController < ApplicationController

	def index
		@faqs = Faq.limit(3)
		@page = Page.find_by(model_index: params[:controller])
	end

end
