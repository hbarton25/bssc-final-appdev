# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  def new_user
    user = User.first
    WelcomeMailer.new_user(user)
  end

end
