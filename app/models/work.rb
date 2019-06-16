class Work < ApplicationRecord
  belongs_to :user
  belongs_to :work_category, optional: true
  has_many :work_images, dependent: :destroy
  has_many :work_links, dependent: :destroy

  IMAGE_LIMIT = 4
  LINK_LIMIT = 4
  accepts_nested_attributes_for :work_images, reject_if: :all_blank, allow_destroy: true, limit: IMAGE_LIMIT
  accepts_nested_attributes_for :work_links, reject_if: :all_blank, allow_destroy: true, limit: LINK_LIMIT

  validates :title, presence: true
  validate -> (work) {
    return unless work.work_category

    unless work.user == work.work_category.user
      errors.add(:work_category_id, 'は自分の設定したカテゴリでありません')
    end
  }
end
