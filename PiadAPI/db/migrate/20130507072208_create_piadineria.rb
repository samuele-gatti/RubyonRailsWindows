class CreatePiadineria < ActiveRecord::Migration
  def change
    create_table :piadineria do |t|
      t.string :ragioneSociale
      t.string :indirizzo
      t.string :comune
      t.string :provincia
      t.string :regione
      t.string :latitudine
      t.string :longitudine

      t.timestamps
    end
  end
end
