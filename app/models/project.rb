class Project < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :rating, presence: true
    validates :published, presence: true
    has_one_attached :image
    validates :image, presence: true
end
