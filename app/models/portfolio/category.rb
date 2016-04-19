class Portfolio::Category < ActiveRecord::Base

	has_many :categorizations, dependent: :destroy
	has_many :items, through: :categorizations

	default_scope { includes(:items).order(:name) }

	def name
		self[:name].titleize if self[:name].present?
	end

	def self.tokens(query)
		categories = where("name like ?", "%#{query}%")
		if categories.empty?
			[{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
		else
			categories
		end
	end

	def self.ids_from_tokens(tokens)
		tokens.gsub!(/<<<(.+?)>>>/){ self.create!(name: $1).id }
		tokens.split(',')
	end

end
