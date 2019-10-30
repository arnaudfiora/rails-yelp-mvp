class ChangeRatingNameInReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :starts, :rating
  end
end
