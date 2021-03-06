class CreateVariables < ActiveRecord::Migration[4.2]
  def change
    create_table :variables do |t|
      t.string :name, null: false
      t.string :data

      t.timestamps null: false
    end
    add_index :variables, :name, unique: true
  end
end
