class Magazine < ApplicationRecord
  has_many :issues

  paginates_per 20
end
