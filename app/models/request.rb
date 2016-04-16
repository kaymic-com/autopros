class Request < ActiveRecord::Base

	belongs_to :service

	validates :service_id, :day, :name, :email, presence: true

end
