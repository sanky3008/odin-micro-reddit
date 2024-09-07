class RemovePosterIdFromPost < ActiveRecord::Migration[7.2]
  def change
    remove_reference :posts, :poster, null: false, foreign_key: true
  end
end
