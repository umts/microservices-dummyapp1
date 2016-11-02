class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :name, null: false
      t.string :color, null: false
      t.string :space_uuid
      t.timestamps
    end
  end
end
