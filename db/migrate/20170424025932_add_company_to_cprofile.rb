class AddCompanyToCprofile < ActiveRecord::Migration[5.0]
  def change
    add_reference :cprofiles, :company, foreign_key: true
  end
end
