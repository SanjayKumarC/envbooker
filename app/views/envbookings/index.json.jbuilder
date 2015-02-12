json.array!(@envbookings) do |envbooking|
  json.extract! envbooking, :id, :env_id, :project_id, :start_date, :end_date
  json.url envbooking_url(envbooking, format: :json)
end
