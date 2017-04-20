class CreateCprofiles < ActiveRecord::Migration[5.0]
  def change
    create_table :cprofiles do |t|
      t.string :name
      t.text :description
      t.text :skills

      t.timestamps
    end
  end
end
