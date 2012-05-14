class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :mpaa_rating

      t.timestamps
    end
  end
end
