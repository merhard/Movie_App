class CreateReviewLogs < ActiveRecord::Migration
  def change
    create_table :review_logs do |t|

      t.timestamps

      t.integer :user_id 
      t.integer :review_id 
    end
  end
end
