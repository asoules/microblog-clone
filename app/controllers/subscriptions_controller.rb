class SubscriptionsController < ApplicationController

  # POST /subscriptions
  def create
    @subscription = Subscription.new(params[:subscription])
    @subscription.follower = @current_user

    respond_to do |format|
      if @subscription.save
        flash[:notice] = "You are now following #{@subscription.following.name}"
        format.html { redirect_to(:back) }
      else
        flash[:error] = "You failed to follow #{@subscription.following.name}"
        format.html { redirect_to(:back) }
      end
    end
  end

  # DELETE /subscriptions/1
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy

    respond_to do |format|
      format.html { redirect_to(@user) }
    end
  end
  
end
