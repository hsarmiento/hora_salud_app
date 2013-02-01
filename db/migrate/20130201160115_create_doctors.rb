class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.integer :account_id
      t.string :rut
      t.string :specialty
      t.integer :has_avatar

      t.timestamps
    end
  end
end
