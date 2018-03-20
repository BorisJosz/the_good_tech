class Changetypetocategory < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :type, :category
  end
end
