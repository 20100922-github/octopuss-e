class Bookmark < ActiveRecord::Base
  acts_as_taggable
  belongs_to :folder
  belongs_to :user
  attr_accessible :name, :url, :folder_id, :tag_list, :user_id

  validates :name, :url, :folder_id, :user_id, :presence => true
end
