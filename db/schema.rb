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

ActiveRecord::Schema[7.0].define(version: 2022_02_27_182646) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "themes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "bodyBg"
    t.string "bgNavbar"
    t.string "colorNavbar"
    t.integer "heroHomeHeight"
    t.string "heroHomeBgImage"
    t.string "heroHomeBgColor"
    t.string "heroHomeColor"
    t.string "buttonBgColor"
    t.string "buttonColor"
    t.string "buttonShadow"
    t.string "buttonBorderRadius"
    t.integer "heroConsultantsHeight"
    t.string "heroConsultantsBgImage"
    t.string "heroConsultantsBgColor"
    t.string "heroConsultantsColor"
    t.integer "heroProfilHeight"
    t.string "heroProfilBgImage"
    t.string "heroProfilBgColor"
    t.string "heroProfilColor"
    t.string "backgroundProfilcolor"
    t.integer "heroAboutHeight"
    t.string "heroAboutBgImage"
    t.string "heroAboutBgColor"
    t.string "heroAboutColor"
    t.string "footerBgColor"
    t.string "footerColor"
    t.string "footerHeight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_themes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "themes", "users"
end
