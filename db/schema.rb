# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_11_040139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cartao_pedidos", force: :cascade do |t|
    t.bigint "cartao_id", null: false
    t.bigint "pedido_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cartao_id"], name: "index_cartao_pedidos_on_cartao_id"
    t.index ["pedido_id"], name: "index_cartao_pedidos_on_pedido_id"
  end

  create_table "cartaos", force: :cascade do |t|
    t.bigint "numero", null: false
    t.string "nome_titular", null: false
    t.string "validade", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cartaos_on_user_id"
  end

  create_table "entregadors", force: :cascade do |t|
    t.string "placa", null: false
    t.string "veiculo", null: false
    t.string "nome", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "prato_id", null: false
    t.bigint "user_id", null: false
    t.boolean "forma_pagamento", null: false
    t.boolean "troco", default: false
    t.bigint "entregador_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entregador_id"], name: "index_pedidos_on_entregador_id"
    t.index ["prato_id"], name: "index_pedidos_on_prato_id"
    t.index ["user_id"], name: "index_pedidos_on_user_id"
  end

  create_table "pratos", force: :cascade do |t|
    t.string "descricao", null: false
    t.float "preco", null: false
    t.boolean "disponibilidade", null: false
    t.string "tempo_estimado"
    t.bigint "restaurante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurante_id"], name: "index_pratos_on_restaurante_id"
  end

  create_table "restaurantes", force: :cascade do |t|
    t.integer "cnpj", null: false
    t.string "nome_oficial", null: false
    t.string "nome_fantasia", null: false
    t.integer "phone", null: false
    t.string "horario", null: false
    t.string "tipo_comida", null: false
    t.string "endereco", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "cpf", null: false
    t.string "nome_completo", null: false
    t.string "rg", null: false
    t.string "email", null: false
    t.string "telefone", null: false
    t.string "adress", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "cartao_pedidos", "cartaos"
  add_foreign_key "cartao_pedidos", "pedidos"
  add_foreign_key "cartaos", "users"
  add_foreign_key "pedidos", "entregadors"
  add_foreign_key "pedidos", "pratos"
  add_foreign_key "pedidos", "users"
  add_foreign_key "pratos", "restaurantes"
end
