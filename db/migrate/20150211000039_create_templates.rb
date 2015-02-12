class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
    	# template should reference user, as foreign id
      t.references :user, index: true

      t.timestamps null: false
    end
    # add_foreign_key :templates, :users
  end
end
