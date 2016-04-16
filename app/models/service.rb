class Service < ActiveRecord::Base

	has_many :requests

	has_many :items, class_name: "ServiceItem"
	accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank

end
