class CreateRanking2017s < ActiveRecord::Migration[5.1]
  def change
    create_table :ranking2017s do |t|
      t.integer :this_week
      t.string :name
      t.string :country
      t.string :average_points
      t.string :total_points
      t.string :events_played
      t.string :points_lost_this_year
      t.string :points_gained_this_year
      t.string :events_played

      t.timestamps
    end
  end
end
