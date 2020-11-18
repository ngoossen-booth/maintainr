class CreateComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :components do |t|
      t.integer :equipment_id
      t.boolean :retired

      t.timestamps
    end
  end
end
