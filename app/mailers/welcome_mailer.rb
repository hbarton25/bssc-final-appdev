class WelcomeMailer < ApplicationMailer
  default from: "boothskiclub@gmail.com"

  def new_user(user)
    @user = user
    mail to: user.email, subject: "Hello!"
  end
end
