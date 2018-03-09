class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.decimal :progress
      t.decimal :total
      t.string :incentive

      t.timestamps
    end
  end
end
