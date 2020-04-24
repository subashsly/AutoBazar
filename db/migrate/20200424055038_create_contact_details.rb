class CreateContactDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_details do |t|
      t.string :address
      t.string :primary_contact
      t.string :secondary_contact
      t.integer :postal_code
      t.string :street_address
      t.string :city
      t.references :user, foreign_key: true  
      t.timestamps
    end
  end
end
