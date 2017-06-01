class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.references :work, foreign_key: true
      t.string :number
      t.integer :type
      t.string :title
      t.string :title_ja

      t.timestamps
    end
  end
end
