class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.belongs_to :state, foreign_key: true
      t.string :region_name
      t.string :region_description

      t.timestamps
    end
  end
end
