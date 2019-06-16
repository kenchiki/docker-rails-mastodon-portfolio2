class ActivityCategory < ApplicationRecord
  has_many :activities, dependent: :destroy

  accepts_nested_attributes_for :activities
  acts_as_list
end
