json.extract! apply, :id, :name, :phone, :email, :comments, :user_id, :created_at, :updated_at
json.url apply_url(apply, format: :json)
