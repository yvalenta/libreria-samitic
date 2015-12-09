class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :score, limit: 2
      t.integer :user_id
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
