class CreateDealers < ActiveRecord::Migration[6.0]
  def change
    create_table :dealers do |t|
      t.string :company_name
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end
