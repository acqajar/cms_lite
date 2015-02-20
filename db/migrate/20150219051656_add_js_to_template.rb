class AddJsToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :js, :text
  end
end
