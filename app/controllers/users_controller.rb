class UsersController < ApplicationController

  def show
    # if additional_info_added?
    #   # redirect_to matches_path
    #   redirect_to user_path(current_user)
    # else
    #   redirect_to edit_user_path
    # end
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

  def language_add
    if params["language"].present?
      params["language"].each do |lang|
        @user.languages << Language.find_by(name: lang)
      end
    end
  end

  def user_params
    params.require(:user).permit(:details)
  end
end
