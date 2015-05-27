json.array!(@treasures) do |treasure|
  json.extract! treasure, :id, :title, :description
  json.url treasure_url(treasure, format: :json)
end
