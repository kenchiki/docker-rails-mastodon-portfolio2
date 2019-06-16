class Activity < ApplicationRecord
  belongs_to :activity_category

  acts_as_list scope: :activity_category
end
