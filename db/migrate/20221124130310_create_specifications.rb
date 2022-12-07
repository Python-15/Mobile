class CreateSpecifications < ActiveRecord::Migration[6.1]
  def change
    create_table :specifications do |t|
      t.integer :camera ,null: false
      t.string :processor ,null: false
      t.integer :ram ,null: false
      t.integer :storage ,null: false
      t.integer :battery ,null: false
      t.string :os_type ,null: false
      
      t.belongs_to :device, null: false, foreign_key: true, index: {unique: true}
      t.timestamps
    end
  end
end
