class ChallengesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_recipe, only: [:show]

  def index
    @challenges = Challenge.all
  end

  def show
  end

  private

  def set_recipe
    @challenge = Challenge.find(params[:id])
  end
end
