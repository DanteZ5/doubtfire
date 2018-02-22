class AddAddressToGrandmas < ActiveRecord::Migration[5.1]
  def change
    add_column :grandmas, :address, :string
  end
end
