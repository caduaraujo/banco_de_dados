class Pedido < ApplicationRecord
  belongs_to :prato
  belongs_to :cliente
  belongs_to :entregador
end
