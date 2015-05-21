json.array!(@owners) do |owner|
  json.extract! owner, :id, :first_name, :last_name, :phone, :street_address, :city, :state, :zip, :signed_waiver, :emerg_contact, :emerg_phone
  json.url owner_url(owner, format: :json)
end
