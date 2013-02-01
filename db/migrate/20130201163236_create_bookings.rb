class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :schedule_id
      t.integer :user_id
      t.integer :day_id
      t.integer :hour_id
      t.integer :state

      t.timestamps
    end
  end
end
