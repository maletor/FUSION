class UserMailer < ActionMailer::Base
  default :from => "prod@prodfusion.com"

  def welcome_email(user)
    @user = user
    @url  = "http://prodfusion.com/login"
    mail(:to => user.email, :subject => "Welcome to PRODfusion")
  end
  
end
