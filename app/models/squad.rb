class Squad < ApplicationRecord
    validates :name, presence: true
    has_many :sprints
    belongs_to :user

end