class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :state_name
      t.text :state_description

      t.timestamps
    end
  end
end
