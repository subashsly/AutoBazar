class CreateOmniauths < ActiveRecord::Migration[6.0]
  def change
    create_table :omniauths do |t|
      t.integer :provider
      t.integer :u_id
      t.references :user, foreign_key: true  
      t.timestamps
    end
  end
end
