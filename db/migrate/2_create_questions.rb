class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.text :title, null: false
    	t.text :content, null: false
    	t.integer :user_id, null: false
    	t.integer :votes
    	t.text :tags

      t.timestamps null: false
    end
  end
end
