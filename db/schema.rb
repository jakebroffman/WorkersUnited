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

ActiveRecord::Schema[7.1].define(version: 2024_02_13_201351) do
  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "location"
    t.time "start_time"
    t.integer "duration"
    t.string "description"
    t.integer "organizer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "attendee_id", null: false
    t.index ["attendee_id"], name: "index_events_on_attendee_id"
    t.index ["organizer_id"], name: "index_events_on_organizer_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.string "responsibilities"
    t.boolean "paid"
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_roles_on_event_id"
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "rsvps", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.integer "role_id", null: false
    t.string "comment"
    t.boolean "attending", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_rsvps_on_event_id"
    t.index ["role_id"], name: "index_rsvps_on_role_id"
    t.index ["user_id"], name: "index_rsvps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.string "local_chapter"
    t.string "email"
    t.string "city"
    t.string "state"
    t.string "profile_photo_url"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "users", column: "attendee_id"
  add_foreign_key "events", "users", column: "organizer_id"
  add_foreign_key "roles", "events"
  add_foreign_key "roles", "users"
  add_foreign_key "rsvps", "events"
  add_foreign_key "rsvps", "roles"
  add_foreign_key "rsvps", "users"
end
