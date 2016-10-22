class Challenge < ApplicationRecord
  serialize :position_points

  has_many :swims
  has_many :users, through: :swims
end
