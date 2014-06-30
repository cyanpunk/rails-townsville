class CreateRolesTable < ActiveRecord::Migration
  def change
    create_table :roles do |table|
      table.string :name
      table.integer :players_count_req, :null => false, :default => 3

      table.timestamps
    end
  end
end
