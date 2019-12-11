class Prato < Database
  include ActiveModel::Model
  attr_accessor :descricao, :preco, :disponibilidade, :tempo_estimado, :restaurante_id, :created_at, :updated_at, :restaurante_id

  TABLENAME = 'prato'

  # belongs_to :restaurante
end
