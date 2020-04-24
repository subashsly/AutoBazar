class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :image
      t.string :authorized_distributor
      t.string :website
      t.text :description
      t.timestamps
    end
  end
end
