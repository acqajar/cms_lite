class AddCustomTextToPages < ActiveRecord::Migration
  def change
    add_column :pages, :custom_text, :text
  end
end
