class User < ActiveRecord::Base

  has_many :tweets, :foreign_key => 'author_id'

end
