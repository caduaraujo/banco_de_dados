class CreatePratos < ActiveRecord::Migration[6.0]
  def change
    create_table :pratos do |t|
      t.string :descricao
      t.float :preco
      t.boolean :disponibilidade
      t.time :tempo_estimado
      t.references :restaurante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
