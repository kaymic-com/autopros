class CreateNavItems < ActiveRecord::Migration
  def change
    create_table :nav_items do |t|
      t.string :href
      t.string :text
      t.belongs_to :page, index: true, foreign_key: true
      t.integer :position
      t.boolean :blank_target

      t.timestamps null: false
    end
  end
end
