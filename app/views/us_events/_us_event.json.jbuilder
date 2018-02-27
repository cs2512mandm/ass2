json.extract! us_event, :id, :name, :start_date, :address, :latitude, :longitude, :created_at, :updated_at
json.url us_event_url(us_event, format: :json)
