class AddColumn < ActiveRecord::Migration
  def change
    add_column :drugs, :py_name, :string
    add_column :drugs, :py_product_name, :string
  end
end