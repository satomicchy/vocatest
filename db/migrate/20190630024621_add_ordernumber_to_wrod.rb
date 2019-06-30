class AddOrdernumberToWrod < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :order_number, :integer
  end
end
