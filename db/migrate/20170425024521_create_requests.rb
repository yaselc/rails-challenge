class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :email
      t.text :image
      t.string :user_agent
      t.string :response

      t.timestamps
    end
  end
end
