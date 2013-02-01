class AddIndexToClinicsPhone < ActiveRecord::Migration
  def change
  	add_index :clinics, :phone, unique: true
  end
end
