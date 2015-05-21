json.array!(@vets) do |vet|
  json.extract! vet, :id, :name, :phone
  json.url vet_url(vet, format: :json)
end
