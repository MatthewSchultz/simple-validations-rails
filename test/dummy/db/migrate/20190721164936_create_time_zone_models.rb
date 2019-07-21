class CreateTimeZoneModels < ActiveRecord::Migration[5.2]
  def change
    create_table :time_zone_models do |t|
      t.string :tz_value, null: false
      t.string :nil_tz_value

      t.timestamps
    end
  end
end
