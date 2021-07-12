class MembersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @articles = Article.where(user_id: @user.id).page(params[:page]).per(5)
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def confirm_destroy
  end

  def destroy
    user = current_user
    user.update(is_active: false)
    sign_out user
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :fav_machine, :twitter_id, :instagram_id, :email, :is_active)
  end

end
