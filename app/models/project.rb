class Project < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :rating, presence: true
    validates :published, presence: true
end
