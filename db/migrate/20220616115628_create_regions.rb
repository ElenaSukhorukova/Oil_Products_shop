class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.text :name_region
      t.string :code_region

      t.timestamps
    end
  end
end
