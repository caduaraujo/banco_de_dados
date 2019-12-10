json.extract! restaurante, :id, :cnpj, :nome_oficial, :nome_fantasia, :phone, :horario, :tipo_comida, :adress_id, :created_at, :updated_at
json.url restaurante_url(restaurante, format: :json)
