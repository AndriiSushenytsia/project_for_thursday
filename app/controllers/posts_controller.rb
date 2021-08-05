class PostsController < ApplicationController
  def show
  end

  def index
    @post = Post.all
  end

  def new
  end

  def edit
    @post = Post.find(params[:id])
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
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post has been updated"
      redirect_to posts_url
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post has been deleted!"
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
