class CartaoPedido < Database
  include ActiveModel::Model
  attr_accessor :id, :cartao_id, :pedido_id

  TABLENAME = 'cartao_pedidos'
end
