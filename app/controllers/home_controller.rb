class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		#redirect_to rails_admin.dashboard_path
  	end
  end
end
