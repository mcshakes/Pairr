class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_auth(auth_hash)

    if user
      session[:user_id] = user.id
      # redirect_to matches_path
      redirect_to user_path(user)
    else
      redirect_to root_path
    end
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end
end
