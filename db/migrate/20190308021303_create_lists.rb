class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :task
      t.text :body
      t.belongs_to :board, foreign_key: true

      t.timestamps
    end
  end
end
