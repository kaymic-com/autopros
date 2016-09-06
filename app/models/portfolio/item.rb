class Portfolio::Item < ActiveRecord::Base

	belongs_to :service

	has_many :categorizations, dependent: :destroy
	has_many :categories, through: :categorizations
	attr_accessor :category_tokens

	def category_tokens=(ids)
		self.category_ids = Portfolio::Category.ids_from_tokens(ids)
	end

	def image
		'http://www.autoprosmobile.com/wp-content/gallery/luxury-sport/2013-1.jpg'
	end

	def title
		titleStr = "#{year} #{make} #{model}"
		titleStr = titleStr + " - #{categories.first.name}" if categories.any?
	end

end
