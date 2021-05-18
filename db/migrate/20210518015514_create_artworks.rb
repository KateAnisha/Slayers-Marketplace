class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
