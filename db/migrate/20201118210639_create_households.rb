class CreateHouseholds < ActiveRecord::Migration[6.0]
  def change
    create_table :households do |t|
      t.integer :owner_id
      t.string :address
      t.date :year_built
      t.integer :equipment_count
      t.integer :clothes_count

      t.timestamps
    end
  end
end
