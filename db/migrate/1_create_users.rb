class CreateUsers < ActiveRecord::Migration

    def change
        create_table :users do |t|
            t.string :email, null: false
            t.string :name
            t.string :username
            t.string :password_digest
            t.text :location, default: "Portland, Oregon"
            t.text :bio, default: "This is my empty bio that I will fill out soon"
            t.text :profile_pic, default: "http://findicons.com/files/icons/1580/devine_icons_part_2/128/account_and_control.png"

            t.timestamps null: false
        end
    end

end
