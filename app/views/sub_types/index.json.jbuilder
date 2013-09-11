json.array!(@sub_types) do |sub_type|
  json.extract! sub_type, :name, :type_id
  json.url sub_type_url(sub_type, format: :json)
end