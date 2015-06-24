class PartnershipsController < ApplicationController

  def paired
    @match = current_user.partnerships.find_by(partner_id: params[:partner_id])
    if @match.save
      if @match.condition == "pending"
        @match.condition = "matched"
        @match.save
        flash[:success] = "Pair added!"
        redirect_to dashboard_path(current_user)

      elsif @match.condition == "potential"
        @match.condition = "pending"
        @match.save
        flash[:notice] = "soon to be paired"
        redirect_to partner_path(current_user)
      else
        flash[:error] = "Can't pair up with this person"
        redirect_to partner_path(current_user)
      end
    else
      flash[:notice] = "Unable to add Pair."
      redirect_to partner_path(current_user)
    end
  end

  def unpaired
    @match = current_user.partnerships.find_by(partner_id: params[:partner_id])
    if @match.save
      @match.condition = "reject"
      @match.save
      flash[:alert] = "They won't try again hopefully."
      redirect_to partner_path(current_user)
    else
      flash[:notice] = "Unable to add Pair."
      redirect_to partner_path(current_user)
    end
  end

  def show
    partner_id = Partnership.new_matches(current_user).sample.partner_id
    @partner = User.find_by(id: partner_id)
  end

  def new
    @partnership = Partnership.new
  end

  def edit
  end


end
