class CreateArticlesAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :articles_authors do |t|
      t.bigint :author_id, type: :bigint, null: false, foreign_key: true
      t.bigint :article_id, type: :bigint, null: false, foreign_key: true

      t.timestamps
    end
  end
end

