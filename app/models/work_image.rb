class WorkImage < ApplicationRecord
  belongs_to :work

  mount_uploader :image, WorkImageUploader

  validates :image, presence: true
end
