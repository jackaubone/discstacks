class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :artist
      t.date :release_date
      t.string :label
      t.text :image_url
      t.text :description

      t.timestamps
    end
  end
end
