class Trip < ActiveRecord::Base
# validates :email, :presence => true
validates :user, :presence => true

has_many :posts
has_many :participants, :through => :registrations, :source => :user_id
has_many :registrations

end
