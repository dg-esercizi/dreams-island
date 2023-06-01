class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :nome
      t.string :descrizione
      t.string :tipo
      t.integer :prezzo
      t.integer :lunghezza
      t.integer :anno
      t.string :porto

      t.timestamps
    end
  end
end
