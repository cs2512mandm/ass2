class DropPgaEvent < ActiveRecord::Migration[5.1]
  def change
    drop_table :pga_events
  end
end
