
json.extract! cprofile, :id, :name, :description, :skills, :created_at, :updated_at
json.url cprofile_url(cprofile, format: :json)
