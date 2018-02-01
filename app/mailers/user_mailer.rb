class UserMailer < ApplicationMailer
  default from: 'garrettsorel@gmail.com'
  
  def welcome_mail
    @user = params[:user]
    @url = 'http://google.com'
    mail(to: @user.email, subject: 'Thanks for your submission')
  end    
end
