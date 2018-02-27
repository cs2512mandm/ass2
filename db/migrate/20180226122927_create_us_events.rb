class CreateUsEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :us_events do |t|
      t.string :name
      t.date :start_date
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
