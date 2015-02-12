json.array!(@envs) do |env|
  json.extract! env, :id, :name, :envlevel_id
  json.url env_url(env, format: :json)
end
