class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.datetime :date_commenced
      t.datetime :date_ended
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
