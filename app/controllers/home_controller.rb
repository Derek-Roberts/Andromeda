class HomeController < ApplicationController
  def index
    @users = User.all
    @friends = [current_user.friendships.find(2)]
  end
end
