class DashboardController < ApplicationController
	before_action :logged_in_user
  def index
    # render template: "dashboard/#{params[:page]}"
  end
end
