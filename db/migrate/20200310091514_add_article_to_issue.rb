class AddArticleToIssue < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :issue, type: :bigint
  end
end
