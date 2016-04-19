class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	before_action :set_nav_items

	private

	def set_nav_items
		@nav_items ||= NavItem.all
	end

end
