class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nick_name
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.datetime :birthday
      t.string :email

      t.timestamps
    end
  end
end
