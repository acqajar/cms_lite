class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :css
      t.text :js
      t.text :html
      t.references :template, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pages, :templates
    add_foreign_key :pages, :users
  end
end
