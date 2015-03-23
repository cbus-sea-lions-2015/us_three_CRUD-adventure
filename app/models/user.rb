class User < ActiveRecord::Base
  has_many :animals

 def password=(user_word)
     self.secret_word  = BCrypt::Password.create(user_word)
 end

 def password
     BCrypt::Password.new(secret_word)
 end

 def self.authenticate(user_email,user_password)
   user = User.where(email: user_email).first
   user if user && user.password == user_password
 end
end
