# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_31_031513) do

  create_table "cursos", force: :cascade do |t|
    t.string "grado"
    t.string "materia"
    t.integer "profesor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profesor_id"], name: "index_cursos_on_profesor_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "documento"
    t.date "fecha_nac"
    t.integer "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_estudiantes_on_curso_id"
  end

  create_table "profesores", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "documento"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
