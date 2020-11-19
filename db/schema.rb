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

ActiveRecord::Schema.define(version: 2020_11_17_020636) do

  create_table "adopted_languages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_adopted_languages_on_language_id"
    t.index ["user_id"], name: "index_adopted_languages_on_user_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "region"
    t.string "country"
    t.string "language_code"
    t.string "language"
    t.integer "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "translations", force: :cascade do |t|
    t.boolean "first_verse"
    t.boolean "ts_one"
    t.boolean "ts_two"
    t.boolean "ts_three"
    t.boolean "ts_four"
    t.boolean "ts_five"
    t.boolean "ts_six"
    t.boolean "ts_seven"
    t.boolean "ts_eight"
    t.boolean "ts_nine"
    t.boolean "ts_ten"
    t.boolean "ts_eleven"
    t.boolean "ts_twelve"
    t.boolean "ts_thirteen"
    t.boolean "ts_fouteen"
    t.boolean "ts_fifteen"
    t.boolean "ts_sixteen"
    t.boolean "ts_seventeen"
    t.boolean "ts_eighteen"
    t.boolean "ts_nineteen"
    t.boolean "ts_twenty"
    t.boolean "ts_twentyone"
    t.boolean "ts_twentytwo"
    t.boolean "ts_twentythree"
    t.boolean "ts_twentyfour"
    t.boolean "ts_twentyfive"
    t.boolean "ts_twentysix"
    t.boolean "ts_twentyseven"
    t.boolean "ts_twentyeight"
    t.boolean "ts_twentynine"
    t.boolean "ts_thirty"
    t.boolean "genesis"
    t.boolean "exodus"
    t.boolean "leviticus"
    t.boolean "numbers"
    t.boolean "deuteronomy"
    t.boolean "joshua"
    t.boolean "judges"
    t.boolean "ruth"
    t.boolean "first_samuel"
    t.boolean "second_samuel"
    t.boolean "first_kings"
    t.boolean "second_kings"
    t.boolean "first_chronicles"
    t.boolean "second_chronicles"
    t.boolean "ezra"
    t.boolean "nehemiah"
    t.boolean "esther"
    t.boolean "job"
    t.boolean "psalms"
    t.boolean "proverbs"
    t.boolean "ecclesiastes"
    t.boolean "song_of_solomon"
    t.boolean "isaiah"
    t.boolean "jeremiah"
    t.boolean "lamentations"
    t.boolean "ezekiel"
    t.boolean "daniel"
    t.boolean "hosea"
    t.boolean "joel"
    t.boolean "amos"
    t.boolean "obadiah"
    t.boolean "jonah"
    t.boolean "micah"
    t.boolean "nahum"
    t.boolean "habakkuk"
    t.boolean "zephaniah"
    t.boolean "haggai"
    t.boolean "zechariah"
    t.boolean "malachi"
    t.boolean "matthew"
    t.boolean "mark"
    t.boolean "luke"
    t.boolean "john"
    t.boolean "acts"
    t.boolean "romans"
    t.boolean "first_corinthians"
    t.boolean "second_corinthians"
    t.boolean "galatians"
    t.boolean "ephesians"
    t.boolean "philippians"
    t.boolean "colossians"
    t.boolean "first_thessalonians"
    t.boolean "second_thessalonians"
    t.boolean "first_timothy"
    t.boolean "second_timothy"
    t.boolean "titus"
    t.boolean "philemon"
    t.boolean "hebrews"
    t.boolean "james"
    t.boolean "first_peter"
    t.boolean "second_peter"
    t.boolean "first_john"
    t.boolean "second_john"
    t.boolean "third_john"
    t.boolean "jude"
    t.boolean "revelation"
    t.boolean "jesus_film"
    t.boolean "lumo"
    t.integer "user_id", null: false
    t.integer "ywam_base_id", null: false
    t.integer "language_id", null: false
    t.integer "adopted_language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adopted_language_id"], name: "index_translations_on_adopted_language_id"
    t.index ["language_id"], name: "index_translations_on_language_id"
    t.index ["user_id"], name: "index_translations_on_user_id"
    t.index ["ywam_base_id"], name: "index_translations_on_ywam_base_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "ywam_base_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["ywam_base_id"], name: "index_users_on_ywam_base_id"
  end

  create_table "ywam_bases", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "adopted_languages", "languages"
  add_foreign_key "adopted_languages", "users"
  add_foreign_key "translations", "adopted_languages"
  add_foreign_key "translations", "languages"
  add_foreign_key "translations", "users"
  add_foreign_key "translations", "ywam_bases", column: "ywam_base_id"
  add_foreign_key "users", "ywam_bases", column: "ywam_base_id"
end
