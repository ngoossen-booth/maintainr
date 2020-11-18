class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :home_id
      t.integer :equipment_id
      t.integer :households_count

      t.timestamps
    end
  end
end
