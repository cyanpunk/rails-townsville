class CreateAccountsTable < ActiveRecord::Migration
  def change
    create_table :accounts do |table|
      # Database authenticatable
      table.string :email, :null => false, :default => ''
      table.string :encrypted_password, :null => false, :default => ''

      # Recoverable
      table.string :reset_password_token
      table.datetime :reset_password_sent_at

      # Rememberable
      table.datetime :remember_created_at

      # Trackable
      table.integer  :sign_in_count, :null => false, :default => 0
      table.datetime :current_sign_in_at
      table.datetime :last_sign_in_at
      table.string   :current_sign_in_ip
      table.string   :last_sign_in_ip

      # Confirmable
      table.string   :confirmation_token
      table.datetime :confirmed_at
      table.datetime :confirmation_sent_at
      table.string   :unconfirmed_email # Only if using reconfirmable

      # Lockable
      table.integer  :failed_attempts, :null => false, :default => 0 # lock strategy is :failed_attempts
      table.string   :unlock_token # unlock strategy is :email or :both
      table.datetime :locked_at

      table.string :game_state, :default => 'browsing'

      table.timestamps
    end

    add_index :accounts, :email, :unique => true
    add_index :accounts, :reset_password_token, :unique => true
    add_index :accounts, :confirmation_token, :unique => true
    add_index :accounts, :unlock_token, :unique => true
  end
end
