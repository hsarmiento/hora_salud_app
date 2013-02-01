class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :last_name
      t.string :type

      t.timestamps
    end
  end
end
