json.array!(@e_assets) do |e_asset|
  json.extract! e_asset, :id, :tag_id, :staff, :type, :make, :location, :model
  json.url e_asset_url(e_asset, format: :json)
end
