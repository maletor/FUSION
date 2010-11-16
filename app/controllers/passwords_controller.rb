class PasswordsController < ApplicationController

  def create
    if user = User.find_by_email(params[:password][:email])
      user.forgot_password!
      UserMailer.forgot_password(user).deliver 
      flash[:notice] = "Just sent you an email."
      redirect_to(root_path)
    else
      flash[:notice] = "That email is not in our database."
      render 'passwords/new'
    end

  end

  def edit
    @user = User.where(:id => params[:user_id], :forgot_token => params[:forgot_token]).first
  end

  def update
    @user = User.where(:id => params[:user_id], :forgot_token => params[:forgot_token]).first

    if @user.update_password(params[:user][:password], params[:user][:password_confirmation])
      user = User.authenticate(params[:user_id], params[:user][:password])

      if user
        session[:user_id] = user.id
        flash[:notice] = "Logged in successfully."
        redirect_to_target_or_default("/")
      else
        flash.now[:error] = "Invalid login or password."
        render :action => 'edit'
      end

    end
  end
end
