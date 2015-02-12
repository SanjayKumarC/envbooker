json.array!(@envlevels) do |envlevel|
  json.extract! envlevel, :id, :name
  json.url envlevel_url(envlevel, format: :json)
end
