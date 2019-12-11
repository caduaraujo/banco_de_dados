class CreateCartaoPedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :cartao_pedidos do |t|
      t.references :cartao, null: false, foreign_key: true
      t.references :pedido, null: false, foreign_key: true

      t.timestamps
    end
  end
end
