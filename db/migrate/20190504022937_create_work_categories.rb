class CreateWorkCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :work_categories do |t|
      t.string :name
      t.integer :position
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
