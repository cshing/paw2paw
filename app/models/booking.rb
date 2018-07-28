class Booking < ApplicationRecord
  validates :user_id, :sitter_id, :booked_date, presence: true
  
end
