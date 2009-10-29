class User < ActiveRecord::Base

  has_many :tweets, :foreign_key => 'author_id'
  
  # attributes: username, name, bio
  
  validates_presence_of :username, :name
  validates_length_of :bio, :within => Tweet::RANGE
  

end
