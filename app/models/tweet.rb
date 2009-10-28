class Tweet < ActiveRecord::Base

  belongs_to :author, :class_name => 'User'
  
  # TODO add followers association
  
  # TODO add following association

  # TODO add subscribed tweets association
  
  # TODO add parent association for replies
  
  # TODO add default scope to order tweets by created_at

end
