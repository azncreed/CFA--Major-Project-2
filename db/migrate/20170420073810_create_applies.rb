class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.text :comments
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
