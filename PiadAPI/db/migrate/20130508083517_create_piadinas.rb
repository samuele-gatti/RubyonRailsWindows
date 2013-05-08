class CreatePiadinas < ActiveRecord::Migration
  def change
    create_table :piadinas do |t|
      t.string :nome
      t.text :ingredienti
      t.decimal :prezzo
      t.string :link
	  t.text :descrizione
      t.integer :listinPiadine_id

      t.timestamps
    end
	add_index :piadinas, :listinPiadine_id
  end
end
