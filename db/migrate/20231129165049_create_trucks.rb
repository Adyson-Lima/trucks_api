class CreateTrucks < ActiveRecord::Migration[7.0]
  def change
    create_table :trucks do |t|
      t.string :truck_model
      t.string :manufacturer

      t.timestamps
    end
  end
end
