class User
  include Mongoid::Document
  field :email
  field :password_hash
  field :password_salt
  embeds_many :geekdoors

  before_save :encrypt_password
    
  attr_accessor :password
  
  def self.auth(email, password)
    user = User.first(:conditions => {:email => email})
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      password_salt = BCrypt::Engine.generate_salt
      password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      self.set(:password_salt, password_salt)
      self.set(:password_hash, password_hash)
    end
  end
end
