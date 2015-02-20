class AddHtmlToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :html, :text
  end
end
