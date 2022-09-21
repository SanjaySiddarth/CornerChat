class ChangeMessagesNewsToMessages < ActiveRecord::Migration[6.0]
  def change
    rename_table :messages_news, :messages
  end
end
