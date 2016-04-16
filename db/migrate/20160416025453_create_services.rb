class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :position

      t.timestamps null: false
    end
  end
end
