class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :user, foreign_key: true, null: false

      t.timestamps

      t.index [:user_id, :created_at]
    end
    remove_index :microposts, :user_id
  end
end
