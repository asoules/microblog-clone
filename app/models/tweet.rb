class Tweet < ActiveRecord::Base

  RANGE = 0..140

  belongs_to :author, :class_name => 'User'
  
  # TODO add followers association
  
  # TODO add following association

  # TODO add subscribed tweets association
  
  # TODO add parent association for replies
  
  # TODO add default scope to order tweets by created_at

  validates_presence_of :body
  validates_length_of :body, :within => RANGE


end
