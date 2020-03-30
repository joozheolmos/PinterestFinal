class Pin < ApplicationRecord
    belongs_to :user
    has_many_attached :images
    validates :name, uniqueness: true
    validates :name, presence: true
    validates :description, length: { minimum: 30 }
end
