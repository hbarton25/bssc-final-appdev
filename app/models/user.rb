class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :email, :presence => true

has_many :registrations
has_many :posts
has_many :trips
has_many :comments

after_create :send_admin_mail
  def send_admin_mail
    WelcomeMailer.new_user(self).deliver
  end

end
