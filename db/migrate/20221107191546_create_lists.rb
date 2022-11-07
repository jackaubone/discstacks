class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.string :list_title
      t.string :list_desc
      t.text :list_image

      t.timestamps
    end
  end
end
