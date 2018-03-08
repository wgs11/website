class DropDataFromDonations < ActiveRecord::Migration[5.0]
  def up
    Donation.delete_all
  end
end
