class AddRatingToReview < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :restaurant, foreign_key: true
    add_column :reviews, :rating, :integer
  end
end
