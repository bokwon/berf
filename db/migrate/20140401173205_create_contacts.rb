class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nick_name
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.datetime :birthday
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
