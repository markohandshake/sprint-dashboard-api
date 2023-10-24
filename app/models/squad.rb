class Squad < ApplicationRecord
    validates :name, presence: true
    has_many :sprints

end