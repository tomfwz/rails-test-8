class DropProfiles < ActiveRecord::Migration
  def up
    drop_table :profiles
  end

  def down
    create_table :profiles do |t|
      t.string :designation
      t.datetime :dob
      t.string :address
      t.string :display_name
      t.string :city
      t.boolean :gender
      t.string :mobile_number
      t.references :user, index: true
    end
  end
end
