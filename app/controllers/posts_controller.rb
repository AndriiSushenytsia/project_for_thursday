class PostsController < ApplicationController
  def show
  end

  def index
    @post = Post.all
  end

  def new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "Post has been created!"
      redirect_to root_url
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
