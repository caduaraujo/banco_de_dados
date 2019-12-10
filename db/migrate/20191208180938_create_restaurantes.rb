class CreateRestaurantes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurantes do |t|
      t.integer :cnpj, null: false, uniqueness: true
      t.string :nome_oficial, null: false, uniqueness: true
      t.string :nome_fantasia, null: false, uniqueness: true
      t.integer :phone, null: false, uniqueness: true
      t.string :horario, null: false, uniqueness: true
      t.string :tipo_comida, null: false
      t.string :endereco, null: false

      t.timestamps
    end
  end
end
