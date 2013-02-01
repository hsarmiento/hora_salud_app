class AddIndexToClinicsAddress < ActiveRecord::Migration
  def change
  	add_index :clinics, :address, unique: true
  end
end
