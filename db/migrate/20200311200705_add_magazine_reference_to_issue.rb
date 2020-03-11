class AddMagazineReferenceToIssue < ActiveRecord::Migration[6.0]
  def change
    add_reference :issues, :magazine, type: :bigint
  end
end
