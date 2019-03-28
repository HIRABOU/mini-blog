class UsersController < ApplicationController

  def show
    user = User.find(current_user)
    @tweets = user.tweets.order("created_at DESC")
  end

end
