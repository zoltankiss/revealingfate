json.array!(@info_for_readings) do |info_for_reading|
  json.extract! info_for_reading, :id, :name, :email, :birth_date
  json.url info_for_reading_url(info_for_reading, format: :json)
end
