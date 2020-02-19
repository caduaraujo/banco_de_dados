class Pedido < Database
  include ActiveModel::Model
  attr_accessor :prato_id, :id, :user_id, :forma_pagamento, :troco, :entregador_id, :created_at, :updated_at


  def prato
    Prato.find(self.prato_id)
  end



  def entregador
    Entregador.find(self.entregador_id)
  end

  # belongs_to :prato
  # belongs_to :user
  # belongs_to :entregador

  TABLENAME = 'pedidos'

end
