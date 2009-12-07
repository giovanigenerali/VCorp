class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.references :employee
      t.references :car
      t.text :comments
      t.boolean :status
      t.timestamps
    end
  end
  
  def self.down
    drop_table :reports
  end
end
