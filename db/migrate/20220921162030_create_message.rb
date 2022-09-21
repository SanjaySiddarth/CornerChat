class CreateMessage < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :users, null: false, foreign_key: true
      t.text :body
      t.timestamps
    end
  end
end
