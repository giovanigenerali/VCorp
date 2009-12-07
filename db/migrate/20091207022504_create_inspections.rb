class CreateInspections < ActiveRecord::Migration
  def self.up
    create_table :inspections do |t|
      t.references :car
      t.date :date
      t.text :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :inspections
  end
end
