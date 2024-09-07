class RemoveUserFromComment < ActiveRecord::Migration[7.2]
  def change
    remove_reference :comments, :User, null: false, foreign_key: true
  end
end
