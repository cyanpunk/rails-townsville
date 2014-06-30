class CreatePlayersTable < ActiveRecord::Migration
  def change
    create_table :players do |table|
      table.integer :account_id
      table.integer :game_id
      table.integer :role_id

      table.string :vitality_state, :default => 'alive'

      table.timestamps
    end
  end
end
