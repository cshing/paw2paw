class Sitter < ApplicationRecord
  validates :name, :address, :summary, :rules, :price, :latitude, :longitude, :user_id, presence: true
  
end
