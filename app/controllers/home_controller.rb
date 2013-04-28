class HomeController < ApplicationController
  def index
    if (Folder.count == 0)
      @folder = Folder.new
      @folder.name = '*'
      @folder.user_id = current_user.id
      @folder.save
    end
    @folder = Folder.first.root
    @descendants = @folder.descendants
    @bookmarks = Bookmark.where(:folder_id => @folder)
    @tags = Tag.all
  end

  def import
  end

  def upload
    upload = params[:file]
    @file = Nokogiri::HTML(upload.read)
    
    @root = Folder.first.root
    froot = Folder.new
    froot.name = 'import-xyz'
    froot.parent_id = @root.id
    froot.user_id = current_user.id
    froot.save
    
    @file_root = @file.xpath("//dt/a")
    @file_root.each do |f|
      bm = froot.bookmarks.new
      bm.url = f['href']
      bm.name = f::text()
      bm.user_id = current_user.id
      bm.save
    end
  end
end
