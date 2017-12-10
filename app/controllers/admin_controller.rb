class AdminController < ApplicationController
	before_action :authenticate_user!
	before_action :admin_only!
	before_action :professor_only!
	before_action :student_only!

	def index
	end


	private

	def admin_only!
		if !current_user.admin?
			redirect_to "/"
		end
	end

	def professor_only!
		if !current_user.professor?
			redirect_to "/dashboardprofs"
		end
	end

	def student_only!
		if !current_user.student?
			redirect_to "/dashboardstuds"
		end
	end

end
