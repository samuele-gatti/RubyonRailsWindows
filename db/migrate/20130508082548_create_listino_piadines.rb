class CreateListinoPiadines < ActiveRecord::Migration
  def change
    create_table :listino_piadines do |t|
      t.integer :piadineria_id

      t.timestamps
    end
	add_index :listino_piadines, :piadineria_id
  end
end
