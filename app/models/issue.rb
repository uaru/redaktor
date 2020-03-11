class Issue < ApplicationRecord
  has_many :articles
  belongs_to :magazine

  scope :chronological, -> { order(year: :desc, month: :desc) }

  def display_name
    "Year #{year} Month #{month} Issue no #{number}"
  end
  paginates_per 30
end
