class Translation < ApplicationRecord
  belongs_to :user
  belongs_to :language
  belongs_to :adopted_language
end
