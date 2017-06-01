class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :title_ja
      t.string :official_site_url
      t.integer :episode_number
      t.integer :type
      t.boolean :copyright
      t.timestamp :on_air

      t.timestamps
    end
  end
end
