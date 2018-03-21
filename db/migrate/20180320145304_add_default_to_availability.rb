class AddDefaultToAvailability < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :availability, :boolean, default: true
  end
end
