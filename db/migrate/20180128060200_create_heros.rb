class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :total
      t.integer :unlocks
      t.string :image_url
      t.string :string

      t.timestamps
    end
  end
end
