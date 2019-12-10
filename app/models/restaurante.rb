class Restaurante < Database
  include ActiveModel::Model
  attr_accessor :id, :cnpj, :nome_fantasia, :nome_oficial, :phone, :horario, :tipo_comida, :endereco, :created_at, :updated_at

  # has_many :pratos

  TABLENAME = 'restaurantes'
end
