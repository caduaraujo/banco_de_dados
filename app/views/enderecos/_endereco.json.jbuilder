json.extract! endereco, :id, :rua, :numero, :complemento, :cidade, :bairro, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
