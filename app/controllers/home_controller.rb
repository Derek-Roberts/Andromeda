class HomeController < ApplicationController
  def index
    @users = User.all
    @friends = current_user.friendships.map { |friend| User.find(friend.friend_id) }
    @article_url = "http://www.theverge.com/2016/7/10/12127638/uber-ergo-investigation-lawsuit-fraud-travis-kalanick"
    #@response = HTTParty.get("http://api.smmry.com/&SM_API_KEY=A252EB9549&SM_LENGTH=5&SM_URL=#{@article_url}")
    @character_count = 1#@response["sm_api_character_count"]
    @article_title = "Test title" #@response["sm_api_title"]
    @summary = "Test summary"#@response["sm_api_content"]
  end
end
