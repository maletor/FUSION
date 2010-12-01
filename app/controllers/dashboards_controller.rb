class DashboardsController < ApplicationController
  def show
    @projects = Project.all
    @invitation = Invitation.new
    
  end
end
