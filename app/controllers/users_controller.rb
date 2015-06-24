class UsersController < ApplicationController

  def show
  end

  def edit
    @user = current_user
    @languages = Language.all
  end

  def update
    @user = current_user
    if @user.update(user_params)
      language_add
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def additional_info_added?
    current_user.details
  end

  def user_params
    params.require(:user).permit(:details)
  end
end
