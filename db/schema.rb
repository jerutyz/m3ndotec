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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110910175111) do

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.integer  "empresa_id"
    t.string   "telefono"
    t.string   "celular"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.text     "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tareas", :force => true do |t|
    t.integer  "empresa_id"
    t.integer  "user_id"
    t.string   "nombre"
    t.string   "estado"
    t.date     "fecha"
    t.integer  "horas"
    t.text     "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
