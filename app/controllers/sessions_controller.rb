class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_auth(auth_hash)

    if user
      session[:user_id] = user.id
      if user.languages.empty?
        redirect_to edit_user_path(user)
      else
        # redirect_to user_path(user)
        redirect_to dashboard_path
        # needs to redirect to a dashboard of some sort
      end
      user.save
    else
      redirect_to root_path
    end
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end

  # def no_languages?
  #
  # end
end
