json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :breed, :color, :age
  json.url dog_url(dog, format: :json)
end
