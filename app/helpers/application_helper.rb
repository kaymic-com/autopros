module ApplicationHelper

	def is_admin?
		return (user_signed_in? ? current_user.is_admin? : false)
	end

end
