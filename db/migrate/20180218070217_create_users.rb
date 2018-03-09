class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :twitch_profile_name
      t.string :display_name

      t.timestamps
    end
  end
end
