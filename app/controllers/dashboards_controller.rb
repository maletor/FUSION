class DashboardsController < ApplicationController
  before_filter :login_required

  def show
    @projects = Project.all
    @invitation = Invitation.new
    @comments = []
    Comment.all.each { |c| (@comments << c) if c.recipients.include?(current_user) }
    @images = []
    Image.all.each { |i| (@images << i) if current_user.projects.include?(i.project) and i.user != current_user }

    @news = @comments + @images
    @news.sort! { |x, y| y.created_at <=> x.created_at }
    
  end
end
