class AddNotesToGrandmas < ActiveRecord::Migration[5.1]
  def change
    add_column :grandmas, :sum_notes, :integer
    add_column :grandmas, :count_notes, :integer
    add_column :grandmas, :average_note, :integer
  end
end
