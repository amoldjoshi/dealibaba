json.extract! contact, :id, :question, :answer, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
