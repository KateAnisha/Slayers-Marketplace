class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :job_title
      t.text :job_description
      t.decimal :job_amount

      t.timestamps
    end
  end
end
