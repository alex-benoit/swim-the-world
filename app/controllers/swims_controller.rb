class SwimsController < ApplicationController
  def create
    Swim.create(user: current_user, challenge: Challenge.find(params[:challenge_id]))
    redirect_to :back
  end

  private
end
