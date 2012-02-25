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
  
  before_save :url_with_http?
  
  def url_with_http?
    unless url =~ /^https?:/i
      self.url = "http://#{url}"
    end
  end
end