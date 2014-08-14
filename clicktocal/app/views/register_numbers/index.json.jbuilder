json.array!(@register_numbers) do |register_number|
  json.extract! register_number, :id, :ip, :ddd, :number, :carried_out
  json.url register_number_url(register_number, format: :json)
end
