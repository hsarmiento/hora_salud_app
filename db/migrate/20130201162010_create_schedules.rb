class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :doctor_id
      t.integer :clinic_id
      t.string :day
      t.time :start_time
      t.time :end_time
      t.integer :type

      t.timestamps
    end
  end
end
