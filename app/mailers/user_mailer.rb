class UserMailer < ActionMailer::Base
  default :from => "prod@prodfusion.com"

  def welcome_email(user)
    @user = user
    @url  = "http://prodfusion.com/login"
    mail(:to => user.email, :subject => "Welcome to PRODfusion")
  end
  
  def project_invite(project, email)
    @project = project
    mail(:to => email, :subject => "PRODfusion: #{project.name}")
  end

  def forgot_password(user)
    @user = user
    mail(:to => user.email, :subject => "PRODfusion // Forgot Your Password?")
  end
end
