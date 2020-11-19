class AdoptedLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :language
  has_one :translation
end
