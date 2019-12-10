class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :cpf, null: false, uniqueness: true
      t.string :nome_completo, null: false, uniqueness: true
      t.string :rg, null: false, uniqueness: true
      t.string :email, null: false, uniqueness: true
      t.string :telefone, null: false, uniqueness: true
      t.string :adress, null: false
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
