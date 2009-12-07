class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.references :department
      t.string :name
      t.string :email
      t.string :position
      t.string :telephone
      t.timestamps
    end
  end
  
  def self.down
    drop_table :employees
  end
end
