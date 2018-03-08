class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.decimal :total
      t.decimal :unlocks
      t.string :image_url

      t.timestamps
    end
  end
end
