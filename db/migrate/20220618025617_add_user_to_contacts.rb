class AddUserToContacts < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :user, index: true
  end
end
