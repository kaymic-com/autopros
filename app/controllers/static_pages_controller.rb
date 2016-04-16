class StaticPagesController < ApplicationController

	def index
		@faqs = Faq.limit(3)
	end

end
