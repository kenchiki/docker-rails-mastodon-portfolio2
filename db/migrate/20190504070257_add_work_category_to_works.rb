class AddWorkCategoryToWorks < ActiveRecord::Migration[5.2]
  def change
    add_reference :works, :work_category, foreign_key: true
  end
end
