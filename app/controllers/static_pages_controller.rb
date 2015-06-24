class StaticPagesController < ApplicationController
  # skip_before_action :authorize!

  def home
  end

  def dashboard
    @partnerships = Partnership.all
  end
end
