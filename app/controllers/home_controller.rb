class HomeController < ApplicationController
  def index
    if (Folder.count == 0)
      @folder = Folder.new
      @folder.name = '*'
      @folder.save
    end
    @folder = Folder.first.root
    if params[:tag]
      @descendants = @folder.descendants.tagged_with(params[:tag])
      @bookmarks = Bookmark.where(:folder_id => @folder).tagged_with(params[:tag])
    else
      @descendants = @folder.descendants
      @bookmarks = Bookmark.where(:folder_id => @folder)
    end
  end
end
