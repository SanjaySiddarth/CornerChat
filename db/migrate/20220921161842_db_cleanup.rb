class DbCleanup < ActiveRecord::Migration[6.0]
  def change
    drop_table :message_tables
    drop_table :users_tables
  end
end
