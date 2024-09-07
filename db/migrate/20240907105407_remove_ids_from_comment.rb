class RemoveIdsFromComment < ActiveRecord::Migration[7.2]
  def change
    remove_column :comments, :User, :string
    remove_column :comments, :references, :string
    remove_reference :comments, :Post, null: false, foreign_key: true
  end
end
