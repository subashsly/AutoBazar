# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_24_055659) do

  create_table "bike_features", force: :cascade do |t|
    t.boolean "speedometer"
    t.boolean "odometer"
    t.integer "console"
    t.integer "stand_alarm"
    t.boolean "stepped_seat"
    t.integer "tripmeter_type"
    t.integer "no_of_tripmeter"
    t.boolean "low_oil_indicator"
    t.boolean "low_fuel_indicator"
    t.boolean "low_battery_indicator"
    t.boolean "pillion_backrest"
    t.boolean "pillion_grabrall"
    t.boolean "pillion_seat"
    t.boolean "pillion_footrest"
    t.boolean "digital_fuel_gauge"
    t.integer "start_type"
    t.boolean "shift_light"
    t.boolean "kill_switch"
    t.boolean "clock"
    t.string "electric_system"
    t.string "battery_type"
    t.string "head_light_type"
    t.string "head_light_bulb_type"
    t.string "brake_tail_light"
    t.boolean "turn_signal"
    t.boolean "pass_signal"
    t.boolean "battery_capacity"
    t.boolean "mobile_connectivity"
    t.boolean "adjustable_windscreen"
    t.boolean "power_mode"
    t.boolean "navigation"
    t.boolean "touch_display"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_bike_features_on_variant_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.string "image"
    t.string "authorized_distributor"
    t.string "website"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comforts", force: :cascade do |t|
    t.boolean "key_less_entry"
    t.boolean "air_conditioner"
    t.boolean "rear_ac_vents"
    t.boolean "automatic_climate_control"
    t.boolean "heater"
    t.boolean "power_outlet"
    t.boolean "steering_adjustment"
    t.boolean "adjustable_seat"
    t.boolean "adjustable_seat_height"
    t.boolean "power_steering"
    t.boolean "foldable_rear_seat"
    t.boolean "cup_holder_front"
    t.boolean "cup_Holder_rear"
    t.boolean "bottle_holder"
    t.boolean "trunk_light"
    t.boolean "vanity_mirror"
    t.boolean "anti_glare_mirrors"
    t.boolean "automatic_headlight"
    t.integer "door_pockets"
    t.boolean "sun_visor"
    t.boolean "cruise_control"
    t.integer "autonomous_parking"
    t.integer "no_of_drive_mode"
    t.string "drive_mode"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_comforts_on_variant_id"
  end

  create_table "contact_details", force: :cascade do |t|
    t.string "address"
    t.string "primary_contact"
    t.string "secondary_contact"
    t.integer "postal_code"
    t.string "street_address"
    t.string "city"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_contact_details_on_user_id"
  end

  create_table "dealers", force: :cascade do |t|
    t.string "company_name"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dealers_on_user_id"
  end

  create_table "dimension_and_capacities", force: :cascade do |t|
    t.integer "length"
    t.string "width"
    t.string "height"
    t.decimal "kerb_wight"
    t.decimal "wheel_base"
    t.integer "ground_clearence"
    t.integer "fuel_tank_capacity"
    t.integer "bootspace"
    t.integer "no_of_doors"
    t.string "seating_capacity"
    t.string "chassis_type"
    t.integer "seat_height"
    t.integer "reserve_fuel_capacity"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_dimension_and_capacities_on_variant_id"
  end

  create_table "engine_and_transmissions", force: :cascade do |t|
    t.text "engine_description"
    t.string "engine_displacement"
    t.text "engine_type"
    t.text "no_of_cylinders"
    t.text "fuel_type"
    t.integer "valves_per_cylinder"
    t.integer "fuel_supply_system"
    t.boolean "turbo_charger"
    t.string "super_charger"
    t.integer "no_of_gears"
    t.boolean "dual_clutch"
    t.string "compression_ratio"
    t.boolean "driving_modes"
    t.boolean "manual_shifting_for_automatic"
    t.boolean "engine_start_stop_function"
    t.integer "transmission_type"
    t.integer "drive_type"
    t.integer "bore"
    t.integer "stroke"
    t.string "fuel_deliver_system"
    t.string "ignition"
    t.string "spark_plug"
    t.string "cooling_system"
    t.string "gear_box_type"
    t.string "engine_cooling_system"
    t.string "valve_configuration"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_engine_and_transmissions_on_variant_id"
  end

  create_table "entertainments", force: :cascade do |t|
    t.boolean "radio"
    t.boolean "cd_player"
    t.boolean "usb_and_auxiliary_input"
    t.boolean "bluetooth_connectivity"
    t.boolean "front_speaker"
    t.boolean "rear_speaker"
    t.boolean "display"
    t.boolean "display_screen_for_rear_passenger"
    t.boolean "gps_navigation_system"
    t.boolean "no_of_speaker"
    t.boolean "voice_command"
    t.boolean "steering_mounted_controls"
    t.boolean "touch_display"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_entertainments_on_variant_id"
  end

  create_table "exteriors", force: :cascade do |t|
    t.boolean "adjustable_head_lights"
    t.boolean "fog_light_front"
    t.boolean "sun_roof"
    t.boolean "moon_roof"
    t.boolean "alloy_wheels"
    t.boolean "tinted_glass"
    t.boolean "integrated_antenna"
    t.boolean "chrome_grille"
    t.boolean "smoke_head_lamps"
    t.boolean "rain_sensing_wiper"
    t.boolean "rear_wash_wiper"
    t.boolean "rear_window_defogger"
    t.boolean "trunk_opener"
    t.boolean "automatic_headlamps"
    t.boolean "metallic_paint"
    t.boolean "body_color_bumpers"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_exteriors_on_variant_id"
  end

  create_table "instrumentations", force: :cascade do |t|
    t.boolean "tacho_meter"
    t.integer "odometer"
    t.boolean "speedometer"
    t.integer "console"
    t.boolean "tripmeter"
    t.integer "no_of_tripmeter"
    t.boolean "distance_to_empty"
    t.integer "fuel_gauge"
    t.boolean "engine_malfunction_light"
    t.boolean "key_off_reminder"
    t.boolean "head_light_reminder"
    t.boolean "fasten_seat_warning"
    t.integer "clock"
    t.boolean "low_fuel_warning"
    t.boolean "low_oil_warning"
    t.boolean "low_battery_warning"
    t.boolean "average_fuel_consumption"
    t.boolean "average_speed"
    t.boolean "outside_temperature_display"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_instrumentations_on_variant_id"
  end

  create_table "miscellaneous", force: :cascade do |t|
    t.boolean "leather_seats"
    t.boolean "electric_adjustable_seats"
    t.boolean "automatic_driving_lights"
    t.string "interior_color"
    t.boolean "advance_safety_feature"
    t.boolean "central_mounted_fuel_tank"
    t.boolean "leather_steering_wheel"
    t.integer "warranty_kilometers"
    t.integer "warranty_years"
    t.string "free_service_period"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_miscellaneous_on_variant_id"
  end

  create_table "new_vehicles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_new_vehicles_on_user_id"
    t.index ["variant_id"], name: "index_new_vehicles_on_variant_id"
  end

  create_table "old_vehicle_informations", force: :cascade do |t|
    t.integer "kilometer_runs"
    t.integer "price"
    t.boolean "price_negotiable"
    t.boolean "condition"
    t.string "used_period"
    t.boolean "warranty"
    t.string "warranty_remaining"
    t.string "color"
    t.integer "ownership"
    t.date "registered_year"
    t.integer "user_id"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_old_vehicle_informations_on_user_id"
    t.index ["variant_id"], name: "index_old_vehicle_informations_on_variant_id"
  end

  create_table "omniauths", force: :cascade do |t|
    t.integer "provider"
    t.integer "u_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_omniauths_on_user_id"
  end

  create_table "performances", force: :cascade do |t|
    t.bigint "power"
    t.bigint "torque"
    t.integer "top_speed"
    t.integer "city_mileage"
    t.integer "highway_mileage"
    t.integer "overall_mileage"
    t.float "acceleration_0_60"
    t.float "acceleration_0_100"
    t.float "braking_60_0"
    t.float "braking_100_0"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_performances_on_variant_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "rating"
    t.integer "review_type"
    t.integer "variant_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["variant_id"], name: "index_reviews_on_variant_id"
  end

  create_table "safeties", force: :cascade do |t|
    t.boolean "passenger_airbag"
    t.boolean "driver_airbag"
    t.boolean "front_side_airbag"
    t.boolean "rear_side_airbag"
    t.boolean "child_safety_lock"
    t.boolean "child_seat_anchor_points"
    t.boolean "brake_assist"
    t.boolean "edb"
    t.boolean "anti_lock_braking_system"
    t.boolean "rear_seat_belt"
    t.boolean "seat_belt_warning"
    t.boolean "hight_adjustable_front_seat_belt"
    t.boolean "rear_camera"
    t.integer "parking_sensor"
    t.boolean "engine_check_warning"
    t.boolean "crash_sensor"
    t.boolean "front_impact_beam"
    t.boolean "side_impact_beam"
    t.boolean "door_ajar_warning"
    t.boolean "tyre_pressure_monitoring_system"
    t.integer "no_of_airbags"
    t.boolean "vehicle_stability_control_system"
    t.boolean "day_night_rear_view_mirror"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_safeties_on_variant_id"
  end

  create_table "securities", force: :cascade do |t|
    t.boolean "central_locking"
    t.boolean "power_door_locks"
    t.boolean "anti_theft_device"
    t.boolean "anti_theft_alarm"
    t.boolean "engine_immobilizer"
    t.boolean "speed_sensor_door_lock"
    t.boolean "smart_access_card_entry"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_securities_on_variant_id"
  end

  create_table "showrooms", force: :cascade do |t|
    t.string "showroom_name"
    t.time "opening_time"
    t.time "closing_time"
    t.string "image"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_showrooms_on_user_id"
  end

  create_table "suspension_brakes_and_steerings", force: :cascade do |t|
    t.string "front_suspension"
    t.string "rear_suspension"
    t.integer "front_brake_type"
    t.integer "front_brake_size"
    t.string "steering_type"
    t.boolean "adjustable_steering_column"
    t.integer "shock_absorber_type"
    t.bigint "turning_radius"
    t.integer "steering_column"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_suspension_brakes_and_steerings_on_variant_id"
  end

  create_table "upcomming_vehicles", force: :cascade do |t|
    t.integer "expected_price"
    t.date "expected_launch_date"
    t.text "description"
    t.integer "prototype_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prototype_id"], name: "index_upcomming_vehicles_on_prototype_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.integer "user_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.string "variant_name"
    t.date "manufacture_year"
    t.float "price"
    t.string "available_colors"
    t.date "launch_date"
    t.integer "vehicle_model_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vehicle_model_id"], name: "index_variants_on_vehicle_model_id"
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.string "model_name"
    t.text "description"
    t.string "image"
    t.integer "no_of_views"
    t.integer "status"
    t.integer "max_price"
    t.integer "min_price"
    t.integer "brand_id"
    t.integer "vehicle_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_vehicle_models_on_brand_id"
    t.index ["vehicle_type_id"], name: "index_vehicle_models_on_vehicle_type_id"
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "vehicle_type_title"
    t.string "image"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wheel_and_tyres", force: :cascade do |t|
    t.string "front_tyre_size"
    t.string "rear_tyre_size"
    t.integer "tyre_type"
    t.integer "wheel_size"
    t.boolean "radical_tyres"
    t.integer "wheel_type"
    t.integer "variant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variant_id"], name: "index_wheel_and_tyres_on_variant_id"
  end

  add_foreign_key "bike_features", "variants"
  add_foreign_key "comforts", "variants"
  add_foreign_key "contact_details", "users"
  add_foreign_key "dealers", "users"
  add_foreign_key "dimension_and_capacities", "variants"
  add_foreign_key "engine_and_transmissions", "variants"
  add_foreign_key "entertainments", "variants"
  add_foreign_key "exteriors", "variants"
  add_foreign_key "instrumentations", "variants"
  add_foreign_key "miscellaneous", "variants"
  add_foreign_key "new_vehicles", "users"
  add_foreign_key "new_vehicles", "variants"
  add_foreign_key "old_vehicle_informations", "users"
  add_foreign_key "old_vehicle_informations", "variants"
  add_foreign_key "omniauths", "users"
  add_foreign_key "performances", "variants"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "variants"
  add_foreign_key "safeties", "variants"
  add_foreign_key "securities", "variants"
  add_foreign_key "showrooms", "users"
  add_foreign_key "suspension_brakes_and_steerings", "variants"
  add_foreign_key "upcomming_vehicles", "prototypes"
  add_foreign_key "variants", "vehicle_models"
  add_foreign_key "vehicle_models", "brands"
  add_foreign_key "vehicle_models", "vehicle_types"
  add_foreign_key "wheel_and_tyres", "variants"
end
