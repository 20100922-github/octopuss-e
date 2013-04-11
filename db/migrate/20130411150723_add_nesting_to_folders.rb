class AddNestingToFolders < ActiveRecord::Migration
  def change
    add_column :folders, :parent_id, :integer
    add_column :folders, :lft, :integer
    add_column :folders, :rgt, :integer
  end
end
