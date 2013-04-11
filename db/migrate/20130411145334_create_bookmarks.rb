class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.string :url
      t.references :folder

      t.timestamps
    end
    add_index :bookmarks, :folder_id
  end
end
