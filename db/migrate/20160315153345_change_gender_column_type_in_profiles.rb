class ChangeGenderColumnTypeInProfiles < ActiveRecord::Migration
  def up
    change_column :profiles, :gender, :string
  end

  def down
    change_column :profiles, :gender, :boolean
  end
end
