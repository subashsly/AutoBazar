class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.float :rating
      t.integer :review_type
      t.references :variant, foreign_key: true  
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end
