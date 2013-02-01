class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :state
      t.string :city
      t.string :township
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
