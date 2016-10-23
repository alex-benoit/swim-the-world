class SwimsController < ApplicationController
  def create
    Swim.create!(user: current_user, distance_done: 0, challenge: Challenge.find(params[:challenge_id]))
    redirect_to :back
  end

  def update
    @client = Strava::Api::V3::Client.new(:access_token => "695350e607feaa5169ca64e79667738048d831d6")
    @swim['distance_done'] += @client.list_athlete_activities.first['distance']
  end

  def destroy
    # Destory the attendance
  end
end
