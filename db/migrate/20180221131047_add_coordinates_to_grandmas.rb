class AddCoordinatesToGrandmas < ActiveRecord::Migration[5.1]
  def change
    add_column :grandmas, :latitude, :float
    add_column :grandmas, :longitude, :float
  end
end
