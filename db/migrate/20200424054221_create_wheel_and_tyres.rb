class CreateWheelAndTyres < ActiveRecord::Migration[6.0]
  def change
    create_table :wheel_and_tyres do |t|
      t.string :front_tyre_size
      t.string :rear_tyre_size
      t.integer :tyre_type
      t.integer :wheel_size
      t.boolean :radical_tyres
      t.integer :wheel_type
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
