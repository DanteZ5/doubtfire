class ModifyColumnsToGrandmas < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:grandmas, :baby_sitting, false)
    change_column_default(:grandmas, :cooking, false)
    change_column_default(:grandmas, :knitting, false)
    change_column_default(:grandmas, :pet_sitting, false)
  end
end
