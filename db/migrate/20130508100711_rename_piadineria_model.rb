class RenamePiadineriaModel < ActiveRecord::Migration
  def change
	rename_table :piadinerium, :piadineria
  end
end
