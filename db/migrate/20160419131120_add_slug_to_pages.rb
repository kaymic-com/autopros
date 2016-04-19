class AddSlugToPages < ActiveRecord::Migration
  def change
    add_column :pages, :slug, :text
    add_index :pages, :slug, unique: true
  end
end
