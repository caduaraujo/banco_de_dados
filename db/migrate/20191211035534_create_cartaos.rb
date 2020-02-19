class CreateCartaos < ActiveRecord::Migration[6.0]
  def change
    create_table :cartaos do |t|
      t.bigint :numero, null: false, uniqueness: true
      t.string :nome_titular, null: false, uniqueness: true
      t.string :validade, null: false, uniqueness: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
