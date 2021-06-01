class AddFieldnameToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :accepted, :string
  end
end
