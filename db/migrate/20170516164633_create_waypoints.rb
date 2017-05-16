class CreateWaypoints < ActiveRecord::Migration[5.1]
  def change
    create_table :waypoints do |t|
      t.float :latitude
      t.float :longitude
      t.string :vehicle_identifier
      t.references :vehicle, foreign_key: true
      t.datetime :sent_at

      t.timestamps
    end
  end
end
