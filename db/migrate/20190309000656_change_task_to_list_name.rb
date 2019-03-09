class ChangeTaskToListName < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :task, :list_name
  end
end
