json.extract! project, :id, :title, :description, :rating, :created_at, :updated_at
json.url project_url(project, format: :json)
