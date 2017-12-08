class HomeController < ApplicationController
  def index
  	if current_user
  		redirect_to rails_admin.dashboard_path
  	end
  end
end
