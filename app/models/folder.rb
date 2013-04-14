class Folder < ActiveRecord::Base
  acts_as_taggable
  acts_as_nested_set
  has_many :bookmarks
  belongs_to :user
  attr_accessible :name, :parent_id, :tag_list, :user_id

  validates :name, :user_id, :presence => true
end
