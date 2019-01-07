class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :crypted_password
      t.string :salt
      t.boolean :admin, default: false, null: false

      t.timestamps

      t.index :email, unique: true
    end
  end
end
