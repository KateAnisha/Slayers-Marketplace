class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.references :user, null: false, foreign_key: true
      t.string :race_name
      t.text :race_description

      t.timestamps
    end
  end
end
