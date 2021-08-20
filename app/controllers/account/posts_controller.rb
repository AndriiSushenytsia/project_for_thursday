class Account::PostsController < Account::AccountController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = current_user.posts.page params[:page]
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:notice] = "Post has been created!"
      redirect_to account_user_url(current_user)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post has been updated"
      redirect_to account_user_url(current_user)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Post has been deleted!"
    redirect_to account_user_url(current_user)
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
