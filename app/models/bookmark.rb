class Bookmark < ActiveRecord::Base
  acts_as_taggable
  belongs_to :folder
  attr_accessible :name, :url, :folder_id, :tag_list
end
