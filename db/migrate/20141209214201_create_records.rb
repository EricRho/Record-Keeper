class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.string :label
      t.string :genre
      t.integer :discs
      t.integer :tracks

      t.timestamps
    end
  end
end
