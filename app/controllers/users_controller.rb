class UsersController < ApplicationController

  def show
    if additional_info_added?
      redirect_to matches_path
    else
      redirect_to edit_user_path
    end
  end

  def edit
    @user = current_user
    @languages = Language.all
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to matches_path
  end

  private

  def additional_info_added?
    current_user.details
  end

  def user_params
    params.require(:user).permit(:details)
  end
end
