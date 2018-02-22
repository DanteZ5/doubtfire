class RenameLatituteToLatitudeInGrandmas < ActiveRecord::Migration[5.1]
  def change
    rename_column :grandmas, :latitute, :latitude
  end
end
