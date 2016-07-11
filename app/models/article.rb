class Article < ActiveRecord::Base
  has_many :users, through: :article_users
  has_many :article_users, dependent: :destroy
end
