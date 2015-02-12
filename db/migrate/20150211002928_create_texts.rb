class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text :body
      # should reference template as text is part of the table
      t.references :template

      t.timestamps null: false
    end
  end
end
