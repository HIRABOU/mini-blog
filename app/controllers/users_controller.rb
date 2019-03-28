class UsersController < ApplicationController

  def show
    user = User.find(current_user)
    @tweets = user.tweets.order("created_at DESC")
    @user = User.find(params[:id])
  end

end
