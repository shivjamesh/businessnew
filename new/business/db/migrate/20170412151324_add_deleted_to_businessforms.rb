class AddDeletedToBusinessforms < ActiveRecord::Migration[5.0]
  def change
    add_column :businessforms, :deleted, :boolean
  end
end
