class AddProfilesColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :designation, :string
    add_column :users, :dob, :datetime
    add_column :users, :address, :string
    add_column :users, :display_name, :string
    add_column :users, :city, :string
    add_column :users, :gender, :string
    add_column :users, :mobile_number, :string
  end
end
