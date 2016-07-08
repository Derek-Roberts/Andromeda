class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]
  def show
    @friendship = @user.friendships.new
  end

  def create
    @friendship = Friendship.new(friendship_params)

    # get the new friendship's friend_id out of the params
    @friendship.friend_id = params[:friend_id]

    if @friendship.save
      flash[:notice] = "Added friend"
      redirect_to root_url
    else
      flash[:notice] = "Unable to add friend"
      redirect_to root_url
    end
  end

  private

    def friendship_params
      params.require(:friendship).permit(:id, :user_id, :friend_id)
    end
end
