class Endereco < Database
  include ActiveModel::Model

  attr_accessor :name, :email, :message
end
