class Prato < Database
  include ActiveModel::Model
  attr_accessor :id, :descricao, :preco, :disponibilidade, :tempo_estimado, :restaurante_id, :created_at, :updated_at

  TABLENAME = 'pratos'

  # belongs_to :restaurante
end
