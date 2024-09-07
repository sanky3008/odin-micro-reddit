class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.references :poster, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
