class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :service, index: true, foreign_key: true
      t.date :day
      t.integer :hour
      t.integer :minute
      t.boolean :meridiem
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
