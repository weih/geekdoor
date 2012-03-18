class Geekdoor
  include Mongoid::Document
  field :name
  field :url
  field :hotkey
  embedded_in :user
  
  validates_presence_of :name
  validates_presence_of :url
  validates_presence_of :hotkey
  validates_format_of :hotkey, :with => /[A-Za-z0-9]/
  
  before_save :url_with_http?, :trans_to_downcase, :set_key_to_used
  before_destroy :set_key_to_unused
  
  protected
  
  def url_with_http?
    unless url =~ /^https?:/i
      self.url = "http://#{url}"
    end
  end
  
  def trans_to_downcase
    self.hotkey.downcase!
  end
  
  def set_key_to_used
    self.user.unused_hotkeys.delete(self.hotkey) if self.hotkey
  end
  
  def set_key_to_unused
    unless self.user.unused_hotkeys.include?(self.hotkey)
      self.user.unused_hotkeys << self.hotkey
      self.user.set(:unused_hotkeys, self.user.unused_hotkeys)
    end
  end
end