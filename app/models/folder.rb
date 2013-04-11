class Folder < ActiveRecord::Base
  acts_as_nested_set
  has_many :bookmarks
  attr_accessible :name, :parent_id
end
