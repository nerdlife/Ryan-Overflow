class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email, null: false
    	t.string :name, null: false
    	t.string :username, null: false
    	t.string :password, null: false
    	t.text :bio, null: false
    	# t.integer :votes, null: false
 
      t.timestamps null: false
    end
  end
end
