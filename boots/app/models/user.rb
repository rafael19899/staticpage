class User < ActiveRecord::Base
attr accessible :name, :email, :password, :password confirmation
has secure password
before save { |user| user.email = email.downcase }
before save :create remember token

private
def create remember token
self.remember token = SecureRandom.urlsafe base64
end
end
