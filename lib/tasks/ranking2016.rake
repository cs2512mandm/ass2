require 'csv'

namespace :ranking2016 do
  desc "TODO"
  task seed_ranking2016: :environment do

    #drop the old table data before importing the new stuff
    Ranking2016.destroy_all

    CSV.foreach("lib/assets/2016_GolfRanking.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Ranking2016.create!(
      this_week: row[0].to_i,
      name: row[1],
      country: row[2],
      average_points: row[3].to_d,
      total_points: row[4].to_d,
      events_played: row[5].to_i,
      points_lost_this_year: row[6].to_d,
      points_gained_this_year: row[7].to_d
    )
    end
  end

end