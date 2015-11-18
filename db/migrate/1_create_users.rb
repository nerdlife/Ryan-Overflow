class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email, null: false
    	t.string :name
    	t.string :username
    	t.string :password_digest
    	t.text :bio
    	t.text :profile_pic
    	t.integer :votes
 
      t.timestamps null: false
    end
  end
end
