json.array!(@meta_infos) do |meta_info|
  json.extract! meta_info, :id
  json.url meta_info_url(meta_info, format: :json)
end
