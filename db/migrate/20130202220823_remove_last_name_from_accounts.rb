class RemoveLastNameFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :last_name
  end

  def down
    add_column :accounts, :last_name, :string
  end
end
