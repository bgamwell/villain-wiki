ActiveRecord::Schema.define(version: 20150805020924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "villains", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
