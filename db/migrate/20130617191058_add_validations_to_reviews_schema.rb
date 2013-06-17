class AddValidationsToReviewsSchema < ActiveRecord::Migration
  def up
    change_column :reviews, :description, :text, null: false
    change_column :reviews, :score, :integer, null: false
    change_column :reviews, :movie_id, :integer, null: false
    change_column :reviews, :user_id, :integer, null: false
  end

  def down
    change_column :reviews, :description, :text, null: true
    change_column :reviews, :score, :integer, null: true
    change_column :reviews, :movie_id, :integer, null: true
    change_column :reviews, :user_id, :integer, null: true
  end
end
