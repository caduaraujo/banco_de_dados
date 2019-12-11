class CartaoPedido < Database
  include ActiveModel::Model
 attr_accessor :id, :pedido_id, :user_id
  # belongs_to :cartao
  # belongs_to :pedido

  def cartao
    Cartao.where()
  end
end
