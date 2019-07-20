class CreateBooleanModels < ActiveRecord::Migration[5.2]
  def change
    create_table :boolean_models do |t|
      t.boolean :normal_bool_value, null: false
      t.boolean :nil_bool_value

      t.timestamps
    end
  end
end
