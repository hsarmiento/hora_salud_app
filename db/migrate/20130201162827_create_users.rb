class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :account_id
      t.string :rut
      t.date :date_of_birth
      t.string :address
      t.string :gender

      t.timestamps
    end
  end
end
