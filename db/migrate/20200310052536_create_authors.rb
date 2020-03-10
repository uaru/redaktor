class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :slug
      t.text :notes

      t.timestamps
    end
  end
end
