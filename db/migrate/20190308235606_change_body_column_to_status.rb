class ChangeBodyColumnToStatus < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :body, :status
  end
end
