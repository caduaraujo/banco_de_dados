class Prato < Database
  include ActiveModel::Model
  
  belongs_to :restaurante
end
