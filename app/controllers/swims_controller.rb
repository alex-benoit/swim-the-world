class SwimsController < ApplicationController
  def create
    Swim.create(user: current_user, challenge: Challenge.find(params[:challenge_id]))
    redirect_to challenges_path
  end
end
