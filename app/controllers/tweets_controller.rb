class TweetsController < ApplicationController

  # POST /tweets
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.author = @current_user

    respond_to do |format|
      if @tweet.save
        flash[:notice] = 'Tweet, tweet!'
        format.html { redirect_to(root_url) }
      else
        format.html { redirect_to(root_url) }
      end
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    respond_to do |format|
      format.html { redirect_to(root_url) }
    end
  end
  
end
