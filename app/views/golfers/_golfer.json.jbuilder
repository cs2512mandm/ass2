json.extract! golfer, :id, :this_week, :name, :country, :average_points, :total_points, :events_played, :points_lost_this_year, :points_gained_this_year, :events_played, :created_at, :updated_at
json.url golfer_url(golfer, format: :json)
