class CreatePratos < ActiveRecord::Migration[6.0]
  def change
    create_table :pratos do |t|
      t.string :descricao, null: false
      t.float :preco, null: false
      t.boolean :disponibilidade, null: false
      t.string :tempo_estimado
      t.references :restaurante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
