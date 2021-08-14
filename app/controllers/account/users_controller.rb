class Account::UsersController < Account::ProfileController
  def show
    @user = User.find(params[:id])
    @posts = current_user.posts.limit(5)
  end
end
