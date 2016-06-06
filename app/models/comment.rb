class Comment < ActiveRecord::Base

belongs_to :post

validates :user_id, :presence => true
validates :post_id, :presence => true
validates :body, :presence => true
end
