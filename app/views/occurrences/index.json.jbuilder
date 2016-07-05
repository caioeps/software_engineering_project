json.array!(@occurrences) do |occurrence|
  json.extract! occurrence, :id, :description, :time, :rating, :latitude, :longitude, :location
  json.url occurrence_url(occurrence, format: :json)
end
