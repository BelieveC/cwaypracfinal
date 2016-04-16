class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :examnote_id

      t.timestamps null: false
    end
    add_index :notes, :examnote_id
  end
end
