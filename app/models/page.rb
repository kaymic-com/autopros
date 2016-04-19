class Page < ActiveRecord::Base

	extend FriendlyId
	friendly_id :title, use: :slugged

	def self.model_indices
		%w(static_pages services)
	end

end
