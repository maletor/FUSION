class InvitationsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @invitation = @project.invitations.build
  end

  def create
    @project = Project.find(params[:project_id])
    @invitation = @project.invitations.build(params[:invitation])
    @invitation.sender = current_user

    if @invitation.save and UserMailer.project_invite(@project, @invitation.recipient_email).deliver
      flash[:notice] = "Thank you, invitation sent."
      redirect_to @project
    else
      flash.now[:notice] = "Your email failed to deliver."
      @milestone = @project.milestones.build
      render 'projects/show'
    end

  end

end
