class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :heading
      t.text :content
      t.string :model_index

      t.timestamps null: false
    end
  end
end
