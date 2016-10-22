class Challenge < ApplicationRecord
  has_many :swims
  has_many :users, through: :swims

  serialize :position_points
end
