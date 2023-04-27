class CreateDreams < ActiveRecord::Migration[7.0]
  def change
    create_table :dreams do |t|
      t.string :nome
      t.text :descrizione

      t.timestamps
    end
  end
end
