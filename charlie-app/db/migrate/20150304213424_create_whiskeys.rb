class CreateWhiskeys < ActiveRecord::Migration
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :type
      t.string :place_of_origin
      t.decimal :proof
      t.timestamps
    end
  end
end
