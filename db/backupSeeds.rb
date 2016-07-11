# WARNING: these seeds assume you have edited the devise config to allow for single letter passwords
#
# 
# uses this dictionary to generate random tags
#load "#{Rails.root}/db/words.rb"
=begin
def gen_tag
  str = String.new
  len = rand(4) + 1
  for i in 1..len
    str += $words.sample + " "
  end
  return str
end
=end
users = User.create(
  [
    { email: 'a@a.com', username: 'ardvark1', first_name: "Adam", last_name: "Aardvark", date_of_birth: DateTime.now, is_male: true, avatar: "default.png", password: "a", password_confirmation: "a"},
    { email: 'b@b.com', username: 'bear1', first_name: "Barbra", last_name: "Bear", date_of_birth: DateTime.now, is_male: false, avatar: "default.png", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', username: 'cat1', first_name: "Catherine", last_name: "Cat", date_of_birth: DateTime.now, is_male: false, avatar: "default.png", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', username: 'dog1', first_name: "Dylan", last_name: "Dog", date_of_birth: DateTime.now, is_male: true, avatar: "default.png", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', username: 'elephant1', first_name: "Elena", last_name: "Elephant", date_of_birth: DateTime.now, is_male: false, avatar: "default.png", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', username: 'fox1', first_name: "Frank", last_name: "Fox", date_of_birth: DateTime.now, is_male: true, avatar: "default.png", password: "f", password_confirmation: "f"}
  ]
)

friends = Friendship.create(
  [
    {user_id: 1, friend_id: 2},
    {user_id: 1, friend_id: 3},
    {user_id: 1, friend_id: 4}
  ]
)
 
