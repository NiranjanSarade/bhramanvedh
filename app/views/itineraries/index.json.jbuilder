json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :day, :description, :tour_id
  json.url itinerary_url(itinerary, format: :json)
end