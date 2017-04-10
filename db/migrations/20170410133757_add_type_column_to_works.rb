Hanami::Model.migration do
  change do
    add_column :works, :type, Integer, default: 0, null: false
  end
end
