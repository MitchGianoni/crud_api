class AddReviewToFilms < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :review, :text
  end
end
