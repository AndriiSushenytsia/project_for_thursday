class PostsController < ApplicationController
  def index
    @posts = Post.all.paginate(page: params[:page], per_page: 5)
  end

  def show
    @post = Post.find(params[:id])
  end
end
