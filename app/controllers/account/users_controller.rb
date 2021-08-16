class Account::UsersController < Account::AccountController
  def show
    @user = User.find(params[:id])
    @posts = current_user.posts.limit(5)
  end
end
