class Subscription < ActiveRecord::Base
  
  belongs_to :follower, :class_name => 'User'
  belongs_to :following, :class_name => 'User'
  
  validates_presence_of :follower_id, :following_id
  
  validates_uniqueness_of :following_id, :scope => :follower_id
  
end
