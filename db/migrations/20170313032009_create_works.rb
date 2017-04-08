Hanami::Model.migration do
  change do
    create_table :works do
      primary_key :id
      column :title, String, null: false
      column :title_ja, String, null: false
      column :official_site_url, String, default: nil
      column :episodes, Integer, default: nil
      column :weekly, Integer, default: nil
      column :time, Time, default: nil
      column :copyright, TrueClass, null: false
      column :released_at, Date, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
