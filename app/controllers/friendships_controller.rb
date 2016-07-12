class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]
  def show
    @friendship = @user.friendships.new
  end

  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.new(friendship_params)
    @friendship.user_id = current_user.id
    redirect_to root_url

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

    def get_friends
      shared_friendships = Friendship.all.map { |user| user if user.user_id == self.id }.compact
      shared_users = shared_image_users.map { |u| User.find(u.user_id) }.compact
      user = User.all.map {|u| u if u.id == self.user_id }.compact
      users_array = User.all - shared_users - user
      # Need to format here with username then email
      users_array.map { |user| [user.name + " (" + user.email + ")", user.id]}
    end
end
