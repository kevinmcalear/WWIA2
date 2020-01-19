class CreateVenueAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_admins do |t|

      t.timestamps
    end
  end
end
