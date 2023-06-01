class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :titolo
      t.string :autore
      t.string :editore
      t.string :genere
      t.text :sintesi
      t.integer :pagine
      t.string :collocazione

      t.timestamps
    end
  end
end
