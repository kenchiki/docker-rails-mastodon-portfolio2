class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.string :link_text
      t.string :link_url
      t.integer :position
      t.references :user, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
