class SwimsController < ApplicationController
  def create
    @swim = Swim.create(user: current_user, challenge: Challenge.find(params[:event_id]))
    redirect_to :back
  end
end
