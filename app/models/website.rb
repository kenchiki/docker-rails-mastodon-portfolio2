class Website < ApplicationRecord
  belongs_to :user

  acts_as_list add_new_at: :top

  validates :link_url, :link_text, presence: true
  validates :link_url, format: /\A#{URI::regexp(%w(http https))}\z/
end
