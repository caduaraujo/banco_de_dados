class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.references :prato, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :forma_pagamento, null: false
      t.boolean :troco, default: false
      t.references :entregador, null: false, foreign_key: true

      t.timestamps
    end
  end
end
