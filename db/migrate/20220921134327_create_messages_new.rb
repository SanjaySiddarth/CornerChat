class CreateMessagesNew < ActiveRecord::Migration[6.0]
  def change
    create_table :messages_news do |t|
      t.belongs_to :users
      t.text :body
      t.timestamps
    end
  end
end
