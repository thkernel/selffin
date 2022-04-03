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

ActiveRecord::Schema.define(version: 2022_04_02_161918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bank_movements", force: :cascade do |t|
    t.string "uid"
    t.string "movement_type"
    t.string "designation"
    t.text "description"
    t.bigint "source_id"
    t.bigint "destination_id"
    t.float "amount", default: 0.0
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_bank_movements_on_destination_id"
    t.index ["source_id"], name: "index_bank_movements_on_source_id"
    t.index ["user_id"], name: "index_bank_movements_on_user_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "short_code"
    t.string "account_type"
    t.string "account_number"
    t.float "balance", default: 0.0
    t.text "description"
    t.boolean "withdrawal"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_banks_on_user_id"
  end

  create_table "contact_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contact_types_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "uid"
    t.bigint "contact_type_id"
    t.string "first_name"
    t.string "last_name"
    t.string "civility"
    t.string "address"
    t.string "phone_number_1"
    t.string "phone_number_2"
    t.string "city"
    t.string "contry"
    t.string "email"
    t.string "about"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_type_id"], name: "index_contacts_on_contact_type_id"
  end

  create_table "debt_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_debt_types_on_user_id"
  end

  create_table "debts", force: :cascade do |t|
    t.string "uid"
    t.bigint "debt_type_id"
    t.date "contracted_at"
    t.date "repayment_date"
    t.string "designation"
    t.boolean "is_creditor"
    t.bigint "creditor_id"
    t.float "amount", default: 0.0
    t.float "interest_rate", default: 0.0
    t.float "interest_amount", default: 0.0
    t.float "total", default: 0.0
    t.string "status"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creditor_id"], name: "index_debts_on_creditor_id"
    t.index ["debt_type_id"], name: "index_debts_on_debt_type_id"
    t.index ["user_id"], name: "index_debts_on_user_id"
  end

  create_table "expense_categories", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.bigint "priority_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["priority_id"], name: "index_expense_categories_on_priority_id"
    t.index ["user_id"], name: "index_expense_categories_on_user_id"
  end

  create_table "expense_distributions", force: :cascade do |t|
    t.string "uid"
    t.bigint "expense_category_id"
    t.float "percentage", default: 0.0
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_category_id"], name: "index_expense_distributions_on_expense_category_id"
    t.index ["user_id"], name: "index_expense_distributions_on_user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "uid"
    t.bigint "expense_category_id"
    t.string "designation"
    t.boolean "is_recipient"
    t.bigint "recipient_id"
    t.string "document_reference"
    t.float "amount", default: 0.0
    t.text "description"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_category_id"], name: "index_expenses_on_expense_category_id"
    t.index ["recipient_id"], name: "index_expenses_on_recipient_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "subject_class"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "income_distributions", force: :cascade do |t|
    t.string "uid"
    t.float "saving_percentage", default: 0.0
    t.float "expense_percentage", default: 0.0
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_income_distributions_on_user_id"
  end

  create_table "income_expense_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "income_expense_id"
    t.bigint "expense_category_id"
    t.float "percentage", default: 0.0
    t.float "amount", default: 0.0
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_category_id"], name: "index_income_expense_items_on_expense_category_id"
    t.index ["income_expense_id"], name: "index_income_expense_items_on_income_expense_id"
  end

  create_table "income_expenses", force: :cascade do |t|
    t.string "uid"
    t.bigint "income_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["income_id"], name: "index_income_expenses_on_income_id"
    t.index ["user_id"], name: "index_income_expenses_on_user_id"
  end

  create_table "income_saving_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "income_saving_id"
    t.float "percentage", default: 0.0
    t.float "amount", default: 0.0
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["income_saving_id"], name: "index_income_saving_items_on_income_saving_id"
  end

  create_table "income_savings", force: :cascade do |t|
    t.string "uid"
    t.bigint "income_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["income_id"], name: "index_income_savings_on_income_id"
    t.index ["user_id"], name: "index_income_savings_on_user_id"
  end

  create_table "income_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_income_types_on_user_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.string "uid"
    t.date "income_date"
    t.bigint "income_type_id"
    t.string "designation"
    t.text "description"
    t.float "amount", default: 0.0
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["income_type_id"], name: "index_incomes_on_income_type_id"
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "permission_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "permission_id"
    t.string "action_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_items_on_permission_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "uid"
    t.bigint "feature_id"
    t.bigint "role_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_permissions_on_feature_id"
    t.index ["role_id"], name: "index_permissions_on_role_id"
  end

  create_table "priorities", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_priorities_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "civility"
    t.string "address"
    t.string "country"
    t.string "city"
    t.string "phone"
    t.text "about"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savings", force: :cascade do |t|
    t.string "uid"
    t.string "designation"
    t.bigint "bank_id"
    t.text "description"
    t.float "amount", default: 0.0
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_id"], name: "index_savings_on_bank_id"
    t.index ["user_id"], name: "index_savings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "login"
    t.bigint "role_id", null: false
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "wallet_movements", force: :cascade do |t|
    t.string "uid"
    t.string "movement_type"
    t.string "designation"
    t.text "description"
    t.bigint "source_id"
    t.bigint "destination_id"
    t.float "amount", default: 0.0
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_wallet_movements_on_destination_id"
    t.index ["source_id"], name: "index_wallet_movements_on_source_id"
    t.index ["user_id"], name: "index_wallet_movements_on_user_id"
  end

  create_table "wallets", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "short_code"
    t.float "balance", default: 0.0
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wallets_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bank_movements", "users"
  add_foreign_key "banks", "users"
  add_foreign_key "contact_types", "users"
  add_foreign_key "contacts", "contact_types"
  add_foreign_key "debt_types", "users"
  add_foreign_key "debts", "debt_types"
  add_foreign_key "debts", "users"
  add_foreign_key "expense_categories", "priorities"
  add_foreign_key "expense_categories", "users"
  add_foreign_key "expense_distributions", "expense_categories"
  add_foreign_key "expense_distributions", "users"
  add_foreign_key "expenses", "expense_categories"
  add_foreign_key "expenses", "users"
  add_foreign_key "income_distributions", "users"
  add_foreign_key "income_expense_items", "expense_categories"
  add_foreign_key "income_expense_items", "income_expenses"
  add_foreign_key "income_expenses", "incomes"
  add_foreign_key "income_expenses", "users"
  add_foreign_key "income_saving_items", "income_savings"
  add_foreign_key "income_savings", "incomes"
  add_foreign_key "income_savings", "users"
  add_foreign_key "income_types", "users"
  add_foreign_key "incomes", "income_types"
  add_foreign_key "incomes", "users"
  add_foreign_key "permission_items", "permissions"
  add_foreign_key "permissions", "features"
  add_foreign_key "permissions", "roles"
  add_foreign_key "priorities", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "savings", "banks"
  add_foreign_key "savings", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "wallet_movements", "users"
  add_foreign_key "wallets", "users"
end
