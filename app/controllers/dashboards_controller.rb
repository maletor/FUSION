class DashboardsController < ApplicationController
  before_filter :login_required

  def show
    @projects = Project.all
    @invitation = Invitation.new
    @comments = Comment.all
    
  end
end
