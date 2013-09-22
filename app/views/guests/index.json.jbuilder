json.array!(@guests) do |guest|
  json.extract! guest, :first_name, :last_name, :email, :phone, :gender, :dob, :first_time
  json.url guest_url(guest, format: :json)
end