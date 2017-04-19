class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :role
      t.text :description
      t.string :company
      t.boolean :apply

      t.timestamps
    end
  end
end
