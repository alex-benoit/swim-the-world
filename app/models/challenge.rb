class Challenge < ApplicationRecord
  has_many :swims, dependent: :destroy
  has_many :users, through: :swims

  serialize :position_points
end
