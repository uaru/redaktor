class ArticlesAuthor < ApplicationRecord
  belongs_to :author
  belongs_to :bookstore
end
