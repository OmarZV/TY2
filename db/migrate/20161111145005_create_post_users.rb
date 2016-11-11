class CreatePostUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :post_users do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :role

      t.timestamps
    end
  end
end
