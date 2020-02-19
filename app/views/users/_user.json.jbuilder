json.extract! user, :id, :cpf, :nome_completo, :rg, :email, :telefone, :adress, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
