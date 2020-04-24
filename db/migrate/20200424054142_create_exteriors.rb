class CreateExteriors < ActiveRecord::Migration[6.0]
  def change
    create_table :exteriors do |t|
      t.boolean :adjustable_head_lights
      t.boolean :fog_light_front
      t.boolean :sun_roof
      t.boolean :moon_roof
      t.boolean :alloy_wheels
      t.boolean :tinted_glass
      t.boolean :integrated_antenna
      t.boolean :chrome_grille
      t.boolean :smoke_head_lamps
      t.boolean :rain_sensing_wiper
      t.boolean :rear_wash_wiper
      t.boolean :rear_window_defogger
      t.boolean :trunk_opener
      t.boolean :automatic_headlamps
      t.boolean :metallic_paint
      t.boolean :body_color_bumpers
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
