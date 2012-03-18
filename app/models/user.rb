class User
  include Mongoid::Document
  field :email
  field :password_hash
  field :password_salt
  field :background_color
  field :foreground_color
  field :unused_hotkeys, :type => Array, :default => ('0'..'9').to_a + ('a'..'u').to_a + ('w'..'z').to_a
  embeds_many :geekdoors
  
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  # validates_length_of :password, :minimum => 6, :maximum => 16
  
  attr_accessor :password
  before_save :encrypt_password
  
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
  
  def has_door?
    geekdoors.any?
  end
  
  def get_background_color
    "style=background-color:##{background_color};" if background_color
  end
  
  def get_foreground_color
    "style=color:##{foreground_color};" if foreground_color
  end
end
