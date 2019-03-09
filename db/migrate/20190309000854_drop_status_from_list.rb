class DropStatusFromList < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :status
  end
end
