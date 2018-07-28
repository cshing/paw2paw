class CreateAvailablities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.integer :sitter_id
      t.date :avail_date

      t.timestamps
    end
  end
end
