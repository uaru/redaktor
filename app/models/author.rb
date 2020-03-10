class Author < ApplicationRecord
  has_and_belongs_to_many :articles

  scope :alphabetical, -> { order(surname: :asc, name: :asc) }

  validates :name, presence: true
  validates :surname, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :slug, presence: true

  def display_name
    "#{surname}, #{name}"
  end
end
