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

ActiveRecord::Schema.define(version: 2018_09_12_105943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_records", force: :cascade do |t|
    t.decimal "amount"
    t.decimal "balance"
    t.string "coinbase_trade_id"
    t.string "coinbase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_account_records_on_account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "title"
    t.decimal "balance"
    t.decimal "available"
    t.decimal "hold"
    t.string "coinbase_account_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "currency_id"
    t.bigint "user_id"
    t.index ["currency_id"], name: "index_accounts_on_currency_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "title"
    t.string "symbol"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "price"
    t.decimal "size"
    t.decimal "fill_fees"
    t.decimal "filled_size"
    t.decimal "executed_value"
    t.decimal "funds"
    t.decimal "specified_funds"
    t.boolean "post_only", default: true, null: false
    t.boolean "settled", default: false, null: false
    t.datetime "done_at"
    t.string "done_reason"
    t.string "time_in_force"
    t.string "stp"
    t.string "coinbase_order_id"
    t.integer "order_type"
    t.integer "status"
    t.integer "side"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "symbol"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "coinbase_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "account_records", "accounts"
  add_foreign_key "accounts", "currencies"
  add_foreign_key "accounts", "users"
  add_foreign_key "orders", "products"
end
