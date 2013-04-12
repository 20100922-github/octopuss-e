class HomeController < ApplicationController
  def index
    if (Folder.count == 0)
      @folder = Folder.new
      @folder.name = '*'
      @folder.save
    end
    @folder = Folder.first.root
    @descendants = @folder.descendants
    @bookmarks = Bookmark.where(:folder_id => @folder)
    @tags = Tag.all
  end
end
