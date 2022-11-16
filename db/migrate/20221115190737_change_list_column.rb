class ChangeListColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :lists, :list_image, :text, default: "https://pwaimg.listenlive.co/TRITONRADIOMUSIC_779321_config_default_cover_image_1430930895.png"
  end

end
