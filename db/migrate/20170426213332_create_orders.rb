class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :pickup_date
      t.float :total
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :phone
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
