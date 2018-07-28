class Availability < ApplicationRecord
  validates :sitter_id, :avail_date, presence: true
  
end
