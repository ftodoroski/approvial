class Project < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :comments
    has_one :department
    has_one :department, through: :user
end
