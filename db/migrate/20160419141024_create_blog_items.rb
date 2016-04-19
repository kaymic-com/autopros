class CreateBlogItems < ActiveRecord::Migration
  def change
    create_table :blog_items do |t|
      t.string :title
      t.string :slug
      t.date :publish_date
      t.text :content

      t.timestamps null: false
    end
    add_index :blog_items, :slug, unique: true
  end
end
