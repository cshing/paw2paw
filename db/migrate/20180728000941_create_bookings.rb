class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :sitter_id
      t.string :dog_name
      t.string :dog_breed
      t.string :dog_size
      t.integer :dog_age
      t.string :dog_gender
      t.string :info
      t.string :dog_avatar
      t.string :status

      t.timestamps
    end
  end
end
