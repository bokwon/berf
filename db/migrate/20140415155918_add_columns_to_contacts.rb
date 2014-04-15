class AddColumnsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :profile_url, :string
  end
end
