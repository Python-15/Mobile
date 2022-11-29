class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :phone_name ,null: false
      t.string :model_no, null: false
      t.integer :mrp, null: false
      t.integer :sp, null: false
      t.boolean :availability_status ,:default => false
      t.string :image ,null: false
      t.integer :imei ,null: false ,unique: true
      t.belongs_to :brand, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
