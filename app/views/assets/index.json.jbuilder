json.array!(@assets) do |asset|
  json.extract! asset, :id, :tag_id, :staff, :type, :model, :make, :location
  json.url asset_url(asset, format: :json)
end
