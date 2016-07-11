class HomeController < ApplicationController
  def index
    @users = User.all
    #@response = HTTParty.get('http://www.theverge.com/2016/7/10/12127638/uber-ergo-investigation-lawsuit-fraud-travis-kalanick')
  end
end
