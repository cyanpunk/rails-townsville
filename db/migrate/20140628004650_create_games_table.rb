class CreateGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |table|
      table.integer :owner_id
      table.integer :players_count, :null => false, :default => 0
      table.integer :players_count_max, :null => false, :default => 5

      table.string :status_state, :default => 'gathering'
      table.string :daytime_state, :default => 'night'

      table.datetime :started_at
      table.datetime :ended_at

      table.timestamps
    end
  end
end
