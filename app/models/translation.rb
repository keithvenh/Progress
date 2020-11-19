class Translation < ApplicationRecord
  belongs_to :user
  belongs_to :ywam_base
  belongs_to :language
  belongs_to :adopted_language
end
