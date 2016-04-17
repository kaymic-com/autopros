class Portfolio::Item < ActiveRecord::Base

	belongs_to :service

	def image
		'http://www.autoprosmobile.com/wp-content/gallery/luxury-sport/2013-1.jpg'
	end

	def title
		"#{year} #{make} #{model}"
	end

end
