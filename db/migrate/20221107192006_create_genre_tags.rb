class CreateGenreTags < ActiveRecord::Migration[7.0]
  def change
    create_table :genre_tags do |t|
      t.integer :genre_id
      t.integer :item_id

      t.timestamps
    end
  end
end
