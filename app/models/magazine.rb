class Magazine < ApplicationRecord
  has_and_belongs_to_many :authors #author can belong to magazine, even if not published anything
  has_many :issues

  paginates_per 20

  def display_name
    title
  end
end
