json.extract! pedido, :id, :prato_id, :cliente_id, :forma_pagamento, :troco, :entregador_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
