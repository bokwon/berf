class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :nick_name, :string
    remove_column :users, :birthday, :datetime
    remove_column :users, :email, :string
  end
end
