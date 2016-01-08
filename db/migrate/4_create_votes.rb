class CreateVotes < ActiveRecord::Migration
def change
create_table :votes do |t|
t.integer :vote_value
t.integer :user_id 
t.belongs_to :votable, polymorphic: true

t.timestamps null: false
end
add_index :votes, [:votable_id, :votable_type]
end
end
