json.array!(@tours) do |tour|
  json.extract! tour, :name, :details, :days, :departure, :arrival, :fees, :inclusion, :exclusion, :sub_type_id, :max_participants
  json.url tour_url(tour, format: :json)
end