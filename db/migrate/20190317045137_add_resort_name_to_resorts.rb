class AddResortNameToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :resort_name, :string
  end
end
