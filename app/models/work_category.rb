class WorkCategory < ApplicationRecord
  belongs_to :user

  acts_as_list add_new_at: :top, scope: :user

  validates :name, presence: true, uniqueness: {scope: :user}
end
