class WorkLink < ApplicationRecord
  belongs_to :work

  validates :link_text, :link_url, presence: true
  validates :link_url, format: /\A#{URI::regexp(%w(http https))}\z/
end
