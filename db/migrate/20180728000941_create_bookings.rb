class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :sitter_id
      t.date :booked_date

      t.timestamps
    end
  end
end
