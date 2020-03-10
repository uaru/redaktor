class CreateMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :magazines do |t|
      t.string :title
      t.string :website
      t.string :facebook
      t.string :mail

      t.timestamps
    end
  end
end
