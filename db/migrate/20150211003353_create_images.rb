class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      # images part of template should reference template
      t.references :template
      t.string :name
      t.integer :size
      t.integer :width
      t.string :content_type

      t.timestamps null: false
    end
  end
end
