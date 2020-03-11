class AssignAuthorsToMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :authors_magazines do |t|
      t.bigint :author_id, type: :bigint, null: false, foreign_key: true
      t.bigint :magazine_id, type: :bigint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
