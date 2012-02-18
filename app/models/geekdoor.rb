class Geekdoor
  include Mongoid::Document
  field :name
  field :url
  field :hotkey
  embedded_in :user
end
