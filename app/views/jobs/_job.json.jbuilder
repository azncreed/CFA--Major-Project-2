json.extract! job, :id, :role, :description, :company, :apply, :created_at, :updated_at
json.url job_url(job, format: :json)
