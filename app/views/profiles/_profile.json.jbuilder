json.extract! profile, :id, :user_id, :biography, :image, :phone, :created_at, :updated_at
json.url profile_url(profile, format: :json)
