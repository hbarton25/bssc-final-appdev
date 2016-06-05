class Post < ActiveRecord::Base

validates :email, :presence => true

belongs_to :user
belongs_to :trip

end
