class Transaction < ApplicationRecord
    belongs_to :buyer, class_name: "User" # Relates the buyer to a user
    belongs_to :seller, class_name: "User" # Relates the seller to a user
    belongs_to :listing, class_name: "Listing"
end
