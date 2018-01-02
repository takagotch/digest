class User < ActiveRecord::Base
  
  def password=(pass)
  end

  def self.authenticate(username.password)
    user = find_by_username(username)
    hash = Digest::SHA256.hexdigest(password + user.password_salt)
    if user.blank? || hash != user.password_hash
      raise AuthenticatorError, "Username or password invalid"
    end

    user
  end
end

