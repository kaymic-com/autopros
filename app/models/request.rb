class Request < ActiveRecord::Base

	belongs_to :service

	validates :service_id, :day, :name, :email, presence: true

	def time(timezone='EDT')
		set_hour = meridiem ? hour + 12 : hour
		DateTime.new(day.year, day.month, day.day, set_hour, minute, 0, timezone)
	end

end
