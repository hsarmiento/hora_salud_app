class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.time :hour

      t.timestamps
    end
  end
end
