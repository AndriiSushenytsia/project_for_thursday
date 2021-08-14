class PostsController < ApplicationController
  def index
    @collection = Post.all.paginate(page: params[:page], per_page: 5)
  end

  def show
    @post = Post.find(params[:id])
  end
end
