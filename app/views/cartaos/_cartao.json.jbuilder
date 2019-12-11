json.extract! cartao, :id, :numero, :nome_titular, :validade, :cliente_id, :created_at, :updated_at
json.url cartao_url(cartao, format: :json)
