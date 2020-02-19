class Entregador < Database
  include ActiveModel::Model
  attr_accessor :id, :placa, :veiculo, :nome, :created_at, :updated_at

  TABLENAME = 'entregadors'
end
