class CreateCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :company_profiles do |t|
      t.string :name
      t.text :description
      t.string :skills

      t.timestamps
    end
  end
end
