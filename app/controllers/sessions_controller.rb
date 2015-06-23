class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_auth(request.env["omniauth.auth"])

    if user
      session[:user_id] = user.id
      # redirect_to dashboard_path
    else
      redirect_to static_pages_home_path
      # because this isn't the root path
    end
  end
end
