json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :breed_id, :birth_date, :owner_id, :vet_id, :in_daycare
  json.url dog_url(dog, format: :json)
end
