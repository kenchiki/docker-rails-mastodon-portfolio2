class CreateWorkImages < ActiveRecord::Migration[5.2]
  def change
    create_table :work_images do |t|
      t.string :image
      t.integer :position
      t.references :work, foreign_key: true

      t.timestamps
    end
  end
end
