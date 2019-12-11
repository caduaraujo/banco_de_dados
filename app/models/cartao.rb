class Cartao < ApplicationRecord
  include ActiveModel::Model
  # belongs_to :user
  attr_accessor: :numero, :nome_titular, :validade, :user_id, :created_at, :updated_at

  def user
    User.where(user_id: self.id )
  end

  TABLENAME = 'cartaos'
end
