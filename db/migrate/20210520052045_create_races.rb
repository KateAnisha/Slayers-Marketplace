class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :race_name
      t.text :race_description

      t.timestamps
    end
  end
end
