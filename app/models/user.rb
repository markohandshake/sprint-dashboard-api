class User < ApplicationRecord
  has_many :squads
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
