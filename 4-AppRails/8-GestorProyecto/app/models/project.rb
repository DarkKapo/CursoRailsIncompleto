class Project < ApplicationRecord
    validates :name, :state, :description, presence: true
    scope :find_valid, -> { where("state > ?", 25) }
end
