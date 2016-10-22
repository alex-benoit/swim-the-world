class PagesController < ApplicationController
  def dashboard
    @challenges = current_user.challenges
  end
end
