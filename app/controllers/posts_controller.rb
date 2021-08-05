class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy]
  def show
  end

  def index
    @post = Post.all
  end

  def new
  end

  def edit
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "Post has been created!"
      redirect_to root_url
    else
      flash[:notice] = "Write valid post please"
      redirect_to root_url
    end
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post has been updated"
      redirect_to posts_url
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Post has been deleted!"
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
