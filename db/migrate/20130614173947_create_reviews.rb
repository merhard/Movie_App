class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :movie_id
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
