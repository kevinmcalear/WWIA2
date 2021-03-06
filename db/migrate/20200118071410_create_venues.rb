class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :coordinates
      t.string :address
      t.bigint :venue_admin_id, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
