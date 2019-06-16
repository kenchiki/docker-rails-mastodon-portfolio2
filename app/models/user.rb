class User < ApplicationRecord
  belongs_to :prefecture, optional: true
  belongs_to :activity, optional: true
  has_many :websites, dependent: :destroy
  has_many :work_categories, dependent: :destroy
  has_many :works, dependent: :destroy

  accepts_nested_attributes_for :websites
  devise :database_authenticatable, :registerable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[mastodon]
  acts_as_taggable_on :skills

  def self.find_or_create_user!(auth)
    uid = auth.info.name + auth.uid

    find_or_create_by!(provider: auth.provider, uid: uid) do |user|
      user.email = uid
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
    end
  end
end
