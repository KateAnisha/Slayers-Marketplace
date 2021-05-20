class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bio, :text
    add_column :users, :weapon, :string
  end
end
