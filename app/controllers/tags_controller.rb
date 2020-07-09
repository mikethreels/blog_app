class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash.notice = "The Tag '#{@tag.name}' has been deleted!"

    redirect_to tags_path(@tags)
end
end
