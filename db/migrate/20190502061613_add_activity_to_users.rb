class AddActivityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :activity, foreign_key: true
  end
end
