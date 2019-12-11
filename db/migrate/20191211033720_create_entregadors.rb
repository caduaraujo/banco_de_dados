class CreateEntregadors < ActiveRecord::Migration[6.0]
  def change
    create_table :entregadors do |t|
      t.string :placa, null: false, uniqueness: true
      t.string :veiculo, null: false, uniqueness: true
      t.string :nome, null: false, uniqueness: true

      t.timestamps
    end
  end
end
