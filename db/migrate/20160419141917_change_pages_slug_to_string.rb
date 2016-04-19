class ChangePagesSlugToString < ActiveRecord::Migration
  def change
	  change_column :pages, :slug, :string
  end
end
