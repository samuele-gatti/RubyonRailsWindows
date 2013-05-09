class CreatePiadineria < ActiveRecord::Migration
  def change
    create_table :piadineria do |t|
      t.string :ragioneSociale
      t.string :address
      t.string :city
      t.string :province
      t.string :region
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
