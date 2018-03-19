class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :type
      t.boolean :availability
      t.integer :price_per_day
      t.text :description
      t.boolean :status
      t.integer :owner_id, index: true

      t.timestamps
    end
  end
end
