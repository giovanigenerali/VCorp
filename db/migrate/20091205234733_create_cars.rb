class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :model_year
      t.integer :manufacture_year
      t.string :board
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
