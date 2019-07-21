class CreateLocaleModels < ActiveRecord::Migration[5.2]
  def change
    create_table :locale_models do |t|
      t.string :lo_value, null: false
      t.string :nil_lo_value

      t.timestamps
    end
  end
end
