class AddImageUrlToArts < ActiveRecord::Migration[6.0]
  def change
    add_column :arts, :image_url, :string
  end
end
