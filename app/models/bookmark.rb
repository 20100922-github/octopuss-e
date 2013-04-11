class Bookmark < ActiveRecord::Base
  belongs_to :folder
  attr_accessible :name, :url
end
