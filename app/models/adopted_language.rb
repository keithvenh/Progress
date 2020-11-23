class AdoptedLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :language
  has_one :translation

  scope :alphabetical, -> { includes(:language).order('languages.country')}
  validates :language_id, uniqueness: {scope: :user_id }
end
