class AddValidationsToMoviesSchema < ActiveRecord::Migration
  def up
    change_column :movies, :title, :string, null: false
    change_column :movies, :synopsis, :text, null: false
  end

  def down
    change_column :movies, :title, :string, null: true
    change_column :movies, :synopsis, :text, null: true
  end
end
