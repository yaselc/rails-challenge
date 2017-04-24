class CreateValidUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :valid_users do |t|
      t.string :email

      t.timestamps
    end
    add_index :valid_users, :email, unique: true
  end
end
