class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy]

  def index
    @all_posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
    @all_posts = Post.all
  end

  def edit
    @all_posts = Post.all
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:notice] = "Post has been created!"
      redirect_to root_url
    else
      flash[:alert] = @post.errors.full_messages
      redirect_to root_url
    end
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post has been updated"
      redirect_to root_url
    else
      flash[:alert] = @post.errors.full_messages
      redirect_to edit_post_url
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Post has been deleted!"
    redirect_to root_url
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
