class AddDeveloperProfileToContracts < ActiveRecord::Migration[6.1]
  def change
    add_reference :contracts, :developer_profile, null: false, foreign_key: true
  end
end
