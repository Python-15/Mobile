class CreateSpecifications < ActiveRecord::Migration[6.1]
  def change
    create_table :specifications do |t|
      t.string :camera ,null: false
      t.string :processor ,null: false
      t.string :ram ,null: false
      t.string :storage ,null: false
      t.string :battery ,null: false
      t.string :os_type ,null: false
      
      t.belongs_to :device, null: false, foreign_key: true, index: {unique: true}
      t.timestamps
    end
  end
end
