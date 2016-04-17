class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.belongs_to :service, index: true, foreign_key: true
      t.integer :year
      t.string :make
      t.string :model

      t.timestamps null: false
    end
  end
end
