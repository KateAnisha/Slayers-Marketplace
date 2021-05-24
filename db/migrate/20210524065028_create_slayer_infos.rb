class CreateSlayerInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :slayer_infos do |t|
      t.string :weapon
      t.string :race
      t.text :biography
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
