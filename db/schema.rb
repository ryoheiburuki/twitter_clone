ActiveRecord::Schema.define(version: 20180930134625) do

  enable_extension "plpgsql"

  create_table "murmurs", force: :cascade do |t|
    t.text "content"
  end

end
