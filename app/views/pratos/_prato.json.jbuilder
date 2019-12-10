json.extract! prato, :id, :descricao, :preco, :disponibilidade, :tempo_estimado, :restaurante_id, :created_at, :updated_at
json.url prato_url(prato, format: :json)
