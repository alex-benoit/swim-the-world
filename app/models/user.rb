class User < ApplicationRecord
  has_many :swims, dependent: :destroy
  has_many :challenges, through: :swims

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
