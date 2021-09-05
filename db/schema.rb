# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_03_020550) do

  create_table "people", charset: "utf8", force: :cascade do |t|
    t.string "birth_year"
    t.string "eye_color"
    t.string "gender"
    t.string "hair_color"
    t.string "height"
    t.string "homeworld"
    t.string "mass"
    t.string "name"
    t.string "skin_color"
    t.string "created"
    t.string "edited"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people_species", charset: "utf8", force: :cascade do |t|
    t.bigint "people_id", null: false
    t.bigint "specie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["people_id"], name: "index_people_species_on_people_id"
    t.index ["specie_id"], name: "index_people_species_on_specie_id"
  end

  create_table "people_starships", charset: "utf8", force: :cascade do |t|
    t.bigint "people_id", null: false
    t.bigint "starships_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["people_id"], name: "index_people_starships_on_people_id"
    t.index ["starships_id"], name: "index_people_starships_on_starships_id"
  end

  create_table "planets", charset: "utf8", force: :cascade do |t|
    t.string "climate"
    t.string "diameter"
    t.string "rotation_period"
    t.string "orbital_period"
    t.string "gravity"
    t.string "population"
    t.string "terrain"
    t.string "surface_water"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "species", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.string "average_height"
    t.string "average_lifespan"
    t.string "eye_colors"
    t.string "hair_colors"
    t.string "skin_colors"
    t.string "language"
    t.string "homeworld"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "starships", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "starship_class"
    t.string "manufacturer"
    t.string "cost_in_credits"
    t.string "length"
    t.string "crew"
    t.string "passengers"
    t.string "max_atmosphering_speed"
    t.string "hyperdrive_ratin"
    t.string "g"
    t.string "MGLT"
    t.string "cargo_capacity"
    t.string "consumables"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "people_species", "people", column: "people_id"
  add_foreign_key "people_species", "species", column: "specie_id"
  add_foreign_key "people_starships", "people", column: "people_id"
  add_foreign_key "people_starships", "starships", column: "starships_id"
end
