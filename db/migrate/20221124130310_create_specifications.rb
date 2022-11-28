class CreateSpecifications < ActiveRecord::Migration[6.1]
  def change
    create_table :specifications do |t|
      t.string :camera
      t.string :processor
      t.string :ram
      t.string :storage
      t.string :battery
      t.string :os_type
      
      t.belongs_to :device, null: false, foreign_key: true, index: {unique: true}
      t.timestamps
    end
  end
end
