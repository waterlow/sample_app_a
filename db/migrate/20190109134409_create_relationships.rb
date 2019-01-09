class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.bigint :follower_id, null: false
      t.bigint :followed_id, null: false

      t.timestamps

      t.index :followed_id
      t.index [:follower_id, :followed_id], unique: true

      t.foreign_key :users, column: :follower_id
      t.foreign_key :users, column: :followed_id
    end
  end
end
