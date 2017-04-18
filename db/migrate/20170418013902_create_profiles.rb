class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.text :biography
      t.string :image
      t.integer :phone

      t.timestamps
    end
  end
end
