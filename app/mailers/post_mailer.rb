class PostMailer < ApplicationMailer
  default from: "boothskiclub@gmail.com"

  def post_email(post)
  @users = User.all
      @users.each do |user|
        mail(to: user.email, subject: 'Update from BSSC!')
      end
end

def send_post_email
  @post = Post.find params[:id]
  UserMailer.post_email(@post).deliver
  render :nothing => true
end
end
