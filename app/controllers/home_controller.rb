class HomeController < ApplicationController

  def tweets
    # TODO get the following tweets, not the current user's tweets!
    @tweets = @current_user.tweets
    
    # Initialize a new tweet for the current user
    @tweet = @current_user.tweets.new
  end

end