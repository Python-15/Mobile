class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :phone_name
      t.string :model_no
      t.integer :mrp
      t.integer :sp
     
      t.string :availability
      t.string :image
      t.integer :IMEI
      t.belongs_to :brand, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
