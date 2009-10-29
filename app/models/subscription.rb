class Subscription < ActiveRecord::Base
  
  validates_presence_of :follower_id, :following_id
  
end
