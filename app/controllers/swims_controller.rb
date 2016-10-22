class SwimsController < ApplicationController
  def create
    Swim.create(user: current_user, challenge: Challenge.find(params[:event_id]))
    redirect_to challenges_path
  end
end
