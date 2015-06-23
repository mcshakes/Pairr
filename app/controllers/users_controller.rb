class UsersController < ApplicationController

  def show
    if additional_info_added?
      # if the person has the info needed to move on, send to dashboard/matches
      # matches = Match.all will be an index of all possible matches
    else
      redirect_to edit_user_path
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    # redirect_to user_path()
  end

  private

  def additional_info_added?
    # current_user.preferred_languages and don't forget below
    current_user.details
  end

  def user_params
    params.require(:user).permit(:details)
  end
end
