json.array!(@projects) do |project|
  json.extract! project, :name, :start_date, :finish_date, :description
  json.url project_url(project, format: :json)
end
