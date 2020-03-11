class Article < ApplicationRecord
  has_and_belongs_to_many :authors
  belongs_to :issue
  acts_as_taggable

  scope :alphabetical, -> { order(title: :asc) }

  paginates_per 30

  validates :title, presence: true
end
