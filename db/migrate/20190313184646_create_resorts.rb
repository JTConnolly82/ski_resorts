class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.belongs_to :region, foreign_key: true
      t.integer :vertical_drop
      t.boolean :allows_snowboarding
      t.integer :annual_snowfall
      t.string :resort_description
      t.string :resort_name

      t.timestamps
    end
  end
end
