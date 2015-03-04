class ChangeTypeToWhiskeyTypeInWhiskeys < ActiveRecord::Migration
  def change
    rename_column :whiskeys, :type, :whiskey_type
  end
end
