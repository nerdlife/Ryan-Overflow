class CreateUsers < ActiveRecord::Migration

def change
create_table :users do |t|
t.string :email, null: false
t.string :name
t.string :username
# t.integer  :vote_count, default: 0
t.string :password_digest
t.text :location, default: "Portland, Oregon"
t.text :bio, default: "This is my empty bio that I will fill out soon"
t.text :profile_pic, default: "http://static1.businessinsider.com/image/525bfb4a69bedda83f84c289-480/bill-belichick.jpg"

t.timestamps null: false
end
end

end
