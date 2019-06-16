class CreateWorkLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :work_links do |t|
      t.string :link_text
      t.string :link_url
      t.integer :position
      t.references :work, foreign_key: true

      t.timestamps
    end
  end
end
