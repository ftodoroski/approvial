class User < ApplicationRecord
    belongs_to :department
    has_many :projects
    has_many :comments
end
