class CreateServiceItems < ActiveRecord::Migration
  def change
    create_table :service_items do |t|
      t.belongs_to :service, index: true, foreign_key: true
      t.string :description
      t.text :long_description
      t.integer :position

      t.timestamps null: false
    end
  end
end
