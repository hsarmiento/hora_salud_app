class CreateSpecificKnowledges < ActiveRecord::Migration
  def change
    create_table :specific_knowledges do |t|
      t.integer :doctor_id
      t.string :work_area
      t.string :description

      t.timestamps
    end
  end
end
