class RemoveNameFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :name
  end

  def down
    add_column :accounts, :name, :string
  end
end
