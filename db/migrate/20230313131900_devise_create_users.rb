class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :encrypted_password, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
