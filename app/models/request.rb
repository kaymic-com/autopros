class Request < ActiveRecord::Base

	belongs_to :service

	validates :day, :name, :email, presence: true

end
