class CreateBusinessforms < ActiveRecord::Migration[5.0]
  def change
    create_table :businessforms do |t|
      t.string :name
      t.string :street
      t.string :state
      t.string :postcode
      t.string :website
      t.string :country
      t.string :phone
      t.string :category
      t.string :description
      t.string :city

      t.timestamps
    end
  end
end
