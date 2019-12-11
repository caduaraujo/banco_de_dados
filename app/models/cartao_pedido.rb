class CartaoPedido < ApplicationRecord
  belongs_to :cartao
  belongs_to :pedido
end
