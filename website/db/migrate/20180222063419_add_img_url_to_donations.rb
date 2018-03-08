class AddImgUrlToDonations < ActiveRecord::Migration[5.0]
  def change
    add_column :donations, :image_url, :string
end
end
