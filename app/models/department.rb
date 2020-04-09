class Department < ApplicationRecord
    has_many :users
    has_many :projects
    has_many :projects, through: :users
end
