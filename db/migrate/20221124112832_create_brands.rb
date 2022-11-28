class CreateBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string :Name
      t.string :CountryOfOrigin

      t.timestamps
    end
  end
end
