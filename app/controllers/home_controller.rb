class HomeController < ApplicationController
  def index
    if (Folder.count == 0)
      @root = Folder.new
      @root.name = '*'
      @root.save
    end
    @root = Folder.first.root
    @descendants = @root.descendants
    @root_bookmarks = Bookmark.where(:folder_id => @root)
  end
end
