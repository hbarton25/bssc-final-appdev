class Post < ActiveRecord::Base

validates :user_id, :presence => true

belongs_to :user
belongs_to :trip

has_many :comments

end
