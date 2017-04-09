Hanami::Model.migration do
  change do
    create_table :episodes do
      primary_key :id
      foreign_key :work_id, :works, on_delete: :cascade, null: false
      column :number, String
      column :title, String
      column :title_ja, String

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
