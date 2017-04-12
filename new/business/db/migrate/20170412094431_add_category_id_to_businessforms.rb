class AddCategoryIdToBusinessforms < ActiveRecord::Migration[5.0]
  def change
    add_column :businessforms, :category_id, :integer
  end
end
