class AddCssToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :css, :text
  end
end
