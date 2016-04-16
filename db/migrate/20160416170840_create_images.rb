class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :practical_id

      t.timestamps null: false
    end
    add_index :images, :practical_id
  end
end
