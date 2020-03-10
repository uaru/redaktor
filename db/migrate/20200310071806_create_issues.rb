class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.integer :year
      t.integer :number
      t.integer :month
      t.datetime :issue_date

      t.timestamps
    end
  end
end
