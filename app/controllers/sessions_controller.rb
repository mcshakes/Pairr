class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_auth(auth_hash)

    if user
      session[:user_id] = user.id
      generate_partners
      if user.languages.empty?
        redirect_to edit_user_path(user)
      else
        redirect_to dashboard_path
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

  def generate_partners
    User.all.each do |user1|
      User.all.each do |user2|
        Partnership.create(user_id: user1.id, partner_id: user2.id, condition: 0) unless user1.id == user2.id
      end
    end
  end
end
