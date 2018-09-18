
ActiveRecord::Schema.define(version: 2018_09_17_232834) do

  create_table "dumpsters", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "dumpster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
