class TagsController < ApplicationController
  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags }
    end
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
    @tag = Tag.find(params[:id])
    @folders = Folder.tagged_with(@tag.name)
    @bookmarks = Bookmark.tagged_with(@tag.name)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag }
    end
  end
end
