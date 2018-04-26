class AddActivityIDtoReviews < ActiveRecord::Migration[5.1]
  def change
  	add_column :reviews, :activity_id, :integer
  end
end
