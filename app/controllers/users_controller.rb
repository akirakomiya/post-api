class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit]
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    flash[:notice] ="You have updated user successfully."
    redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private
  def ensure_correct_user
    @user = User.find(params[:id])
    if @user.id != current_user.id
      flash[:notice] = "You can't access other user's edit"
      redirect_to user_path(current_user.id)
    end
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
