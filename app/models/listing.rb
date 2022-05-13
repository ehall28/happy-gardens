class Listing < ApplicationRecord
    belongs_to :user

    validates :name, presence: true, length: { minimum: 2 }
    validates :description, presence: true, length: { minimum: 10 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
