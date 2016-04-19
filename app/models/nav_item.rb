class NavItem < ActiveRecord::Base

	belongs_to :page
	before_save :set_page_path_to_href

	default_scope { order(position: :asc) }

	private

	def set_page_path_to_href
		self.href = Rails.application.routes.url_helpers.root_page_path self.page if self.page.present?
	end

end
