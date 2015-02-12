json.array!(@envapps) do |envapp|
  json.extract! envapp, :id, :env_id, :app_id
  json.url envapp_url(envapp, format: :json)
end
