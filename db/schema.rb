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

ActiveRecord::Schema.define(version: 20190129110055) do

  create_table "backoffice_articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.date "published_at"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_backoffice_articles_on_author_id"
  end

  create_table "backoffice_authors", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "backoffice_compliances", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.date "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compliance_docs", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.date "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_comunications", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "name_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_consults", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "name_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_managements", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "name_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_tecnologies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "name_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_trainners", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "name_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "name_path"
  end

end
