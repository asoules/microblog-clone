class User < ActiveRecord::Base

  has_many :tweets, :foreign_key => 'author_id'

  has_many :outgoing_subscriptions,
    :class_name => 'Subscription',
    :foreign_key => 'follower_id'

  has_many :following,
    :class_name => 'User',
    :through => :outgoing_subscriptions

  has_many :incoming_subscriptions,
    :class_name => 'Subscription',
    :foreign_key => 'following_id'

  has_many :followers,
    :class_name => 'User',
    :through => :outgoing_subscriptions

  has_many :incoming_tweets, :class_name => 'Tweet',
    :finder_sql => 'SELECT * FROM tweets WHERE tweets.author_id IN ("#{following_ids.join(",")}")',
    :order => 'created_at DESC'

  # attributes: username, name, bio

  validates_presence_of :username, :name
  validates_length_of :bio, :within => Tweet::RANGE

  def following_ids
    self.following.collect { |following| following.id }
  end
end
