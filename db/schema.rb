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

ActiveRecord::Schema.define(version: 2021_05_08_234919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aluguels", force: :cascade do |t|
    t.decimal "preco", precision: 8, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.boolean "status"
    t.datetime "data_retirada"
    t.datetime "data_devolucao"
    t.integer "livro_id"
    t.integer "cliente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.string "telefone"
    t.string "endereco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "autor"
    t.string "titulo"
    t.string "genero"
    t.boolean "disponivel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sinistros", force: :cascade do |t|
    t.decimal "preco", precision: 8, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.boolean "status"
    t.integer "tipo"
    t.text "descrição"
    t.integer "aluguel_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
