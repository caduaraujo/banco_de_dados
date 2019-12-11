class Cartao < Database
  include ActiveModel::Model
  attr_accessor :id, :numero, :nome_titular, :validade, :user_id, :created_at, :updated_at

  def user
    User.where(user_id: self.id)
  end

  TABLENAME = 'cartaos'
end
