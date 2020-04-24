class CreateShowrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :showrooms do |t|
      t.string :showroom_name
      t.time :opening_time
      t.time :closing_time
      t.string :image
      t.references :user, foreign_key: true  
      t.timestamps
    end
  end
end
