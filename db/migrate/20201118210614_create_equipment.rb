class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.integer :home_id
      t.text :description
      t.boolean :retired
      t.integer :components_count

      t.timestamps
    end
  end
end
