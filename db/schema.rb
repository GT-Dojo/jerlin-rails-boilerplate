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

ActiveRecord::Schema[7.0].define(version: 2023_11_06_142828) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "title", null: false
    t.date "release_date"
    t.bigint "artist_id", null: false
    t.bigint "publisher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
    t.index ["publisher_id"], name: "index_albums_on_publisher_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collaborators", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_collaborators_on_artist_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_collaborators", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "collaborator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collaborator_id"], name: "index_song_collaborators_on_collaborator_id"
    t.index ["song_id"], name: "index_song_collaborators_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "artist_id", null: false
    t.bigint "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "albums", "publishers"
  add_foreign_key "collaborators", "artists"
  add_foreign_key "song_collaborators", "collaborators"
  add_foreign_key "song_collaborators", "songs"
  add_foreign_key "songs", "albums"
  add_foreign_key "songs", "artists"
end
