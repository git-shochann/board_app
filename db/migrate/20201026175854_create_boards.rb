class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.references :user, null: false , foreign_key: true
      t.timestamps
    end
  end
end