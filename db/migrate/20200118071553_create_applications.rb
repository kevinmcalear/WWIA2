class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.datetime :date_applied
      t.string :status
      t.bigint :traveller_id, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
